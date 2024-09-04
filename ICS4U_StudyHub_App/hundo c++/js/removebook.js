$(document).ready(function() {
    var firebaseConfig = {
        apiKey: "AIzaSyBuyAp0-coTH4f2B-yV90Yk9rbnE7Qwb3w",
        authDomain: "librarymanagementsystem-fcb1c.firebaseapp.com",
        databaseURL: "https://librarymanagementsystem-fcb1c-default-rtdb.firebaseio.com/",
        projectId: "librarymanagementsystem-fcb1c",
        storageBucket: "librarymanagementsystem-fcb1c.appspot.com",
        messagingSenderId: "472846118639",
        appId: "1:472846118639:web:aabfb8d9921c5dc2eb351a",
    };

    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);

    var db = firebase.firestore();

    // Fetch available groups with filtering based on form selections
    function fetchGroups() {
        var method = $("input[name='method']:checked").val();
        var location = $("#location").val();
        var subject = $("#subject").val();

        var query = db.collection("groups");

        // Apply filters based on form selections
        if (method) {
            query = query.where("method", "==", method);
        }
        if (location) {
            query = query.where("location", "==", location);
        }
        if (subject) {
            query = query.where("subject", "==", subject);
        }

        query.get().then((querySnapshot) => {
            var availableGroupsTable = $("#available-groups tbody");
            availableGroupsTable.empty();
            querySnapshot.forEach((doc) => {
                var data = doc.data();
                availableGroupsTable.append(
                    "<tr>" +
                    "<td>" + data.method + "</td>" +
                    "<td>" + data.location + "</td>" +
                    "<td>" + data.subject + "</td>" +
                    "<td><button onclick=\"joinGroup('" + doc.id + "')\">Join</button></td>" +
                    "</tr>"
                );
            });
        });
    }

    // Fetch joined groups for the current user
    function fetchJoinedGroups() {
        // Get the current user ID
        var userId = firebase.auth().currentUser.uid;
        
        db.collection("users").doc(userId).collection("joinedgroups").get().then((querySnapshot) => {
            var joinedGroupsTable = $("#joined-groups tbody");
            joinedGroupsTable.empty();
            querySnapshot.forEach((doc) => {
                var data = doc.data();
                joinedGroupsTable.append(
                    "<tr>" +
                    "<td>" + data.method + "</td>" +
                    "<td>" + data.location + "</td>" +
                    "<td>" + data.subject + "</td>" +
                    "<td><button onclick=\"leaveGroup('" + doc.id + "')\">Leave</button></td>" +
                    "</tr>"
                );
            });
        });
    }

    // Listen for authentication state changes
    firebase.auth().onAuthStateChanged(function(user) {
        if (user) {
            // User is signed in.
            fetchGroups();
            fetchJoinedGroups();
        } else {
            // User is signed out.
            // Redirect to login page or handle accordingly
        }
    });

    // Function to join a group
    window.joinGroup = function(groupId) {
        // Get the current user ID
        var userId = firebase.auth().currentUser.uid;

        db.collection("groups").doc(groupId).get().then(function(doc) {
            if (doc.exists) {
                var data = doc.data();
                db.collection("users").doc(userId).collection("joinedgroups").doc(groupId).set(data).then(function() {
                    db.collection("groups").doc(groupId).delete().then(function() {
                        fetchGroups();
                        fetchJoinedGroups();
                    });
                }).catch(function(error) {
                    console.error("Error joining group: ", error);
                });
            } else {
                console.error("No such group!");
            }
        }).catch(function(error) {
            console.error("Error getting group: ", error);
        });
    }

    // Function to leave a group
    window.leaveGroup = function(groupId) {
        // Get the current user ID
        var userId = firebase.auth().currentUser.uid;

        db.collection("users").doc(userId).collection("joinedgroups").doc(groupId).get().then(function(doc) {
            if (doc.exists) {
                var data = doc.data();
                db.collection("groups").doc(groupId).set(data).then(function() {
                    db.collection("users").doc(userId).collection("joinedgroups").doc(groupId).delete().then(function() {
                        fetchGroups();
                        fetchJoinedGroups();
                    });
                }).catch(function(error) {
                    console.error("Error leaving group: ", error);
                });
            } else {
                console.error("No such group!");
            }
        }).catch(function(error) {
            console.error("Error getting group: ", error);
        });
    }

// Function to sort table alphabetically by column using Bubble sort
function sortTable(tableId, columnIndex) {
    var table = $("#" + tableId);
    var rows = table.find("tbody > tr").get();
    var n = rows.length;

    for (var i = 0; i < n-1; i++) {
        for (var j = 0; j < n-i-1; j++) {
            var cellA = $(rows[j]).children("td").eq(columnIndex).text().toLowerCase();
            var cellB = $(rows[j+1]).children("td").eq(columnIndex).text().toLowerCase();
            if (cellA.localeCompare(cellB) > 0) {
                // Swap rows
                var temp = rows[j];
                rows[j] = rows[j+1];
                rows[j+1] = temp;
            }
        }
    }

    // Re-append rows to the table
    table.children("tbody").empty(); // Clear existing rows
    $.each(rows, function(index, row) {
        table.children("tbody").append(row);
    });
}

    
    // Add event listener to sort buttons
    $(".sort-button").click(function() {
        var tableId = $(this).closest("table").attr("id"); // Get ID of the table
        var columnIndex = $(this).parent().index(); // Get column index
        sortTable(tableId, columnIndex); // Sort the table
    });

    // Function to handle form submission
    $("#checkform").submit(function(event) {
        event.preventDefault(); // Prevent default form submission behavior
        
        // Fetch groups based on form selections
        fetchGroups();
    });
});
