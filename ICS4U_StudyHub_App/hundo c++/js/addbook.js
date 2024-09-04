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

    $("#startgroupform").submit(function(e) {
        e.preventDefault(); // Prevent the default form submission
        add_this();
    });

    $('#submit').click(function() {
        add_this();
    });

    firebase.auth().onAuthStateChanged(user => {
        if (!user) {
            window.location = 'homepage.html';
        }
    });

    // Function to handle adding the group
    function add_this() {
        var method = $("input[name='method']:checked").val();
        var location = $("#location").val();
        var subject = $("#subject").val();

        if (!method || !location || !subject) {
            showModal("Please fill in all the fields.");
            return;
        }

        var groupData = {
            method: method,
            location: location,
            subject: subject
        };

        db.collection("groups").add(groupData)
            .then(function(docRef) {
                console.log("Document written with ID: ", docRef.id);
                showModal("Group added successfully.");
            })
            .catch(function(error) {
                console.error("Error adding document: ", error);
                showModal("Error adding group: " + error.message);
            });
    }

    // Function to show the modal with a specific message
    function showModal(message) {
        $("#modal-message").text(message);
        $("#myModal").css("display", "block");

        $(".close").click(function() {
            $("#myModal").css("display", "none");
        });

        // Close the modal when the user clicks anywhere outside of the modal
        $(window).click(function(event) {
            if (event.target.id == "myModal") {
                $("#myModal").css("display", "none");
            }
        });
    }
});