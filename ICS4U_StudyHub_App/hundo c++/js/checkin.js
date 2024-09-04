$(document).ready(function () {
    // Firebase configuration
    var firebaseConfig = {
      apiKey: "AIzaSyBuyAp0-coTH4f2B-yV90Yk9rbnE7Qwb3w",
      authDomain: "librarymanagementsystem-fcb1c.firebaseapp.com",
      databaseURL:
        "https://librarymanagementsystem-fcb1c-default-rtdb.firebaseio.com/",
      projectId: "librarymanagementsystem-fcb1c",
      storageBucket: "librarymanagementsystem-fcb1c.appspot.com",
      messagingSenderId: "472846118639",
      appId: "1:472846118639:web:aabfb8d9921c5dc2eb351a",
    };
  
    firebase.initializeApp(firebaseConfig);
  
    // Reference to the study groups collection
    const db = firebase.firestore();
    const studyGroupsRef = db.collection("study-groups");
  
    // Function to fetch and display study groups
// Function to fetch and display study groups
function displayStudyGroups() {
    const tableBody = $("#study-groups-table tbody");
    studyGroupsRef
      .get()
      .then((querySnapshot) => {
        querySnapshot.forEach((doc) => {
          const group = doc.data();
          const row = $("<tr>");
          row.html(`
            <td>${group.groupName}</td>
            <td>${group.subject}</td>
            <td>${group.location}</td>
            <td>${group.meetingTime}</td>
            <td>${group.leader}</td>
            <td><button class="group-details-button">View Details</button></td>
          `);
          row.data("group", group); // Store group data in row
          tableBody.append(row);
        });
      })
      .catch((error) => {
        console.error("Error getting study groups: ", error);
      });
  }
  
  
    // Call the function to display study groups when the page loads
    $(window).on("load", function () {
      displayStudyGroups();
    });
  
    // Open modal with group details when the button is clicked
    $(document).on("click", ".group-details-button", function () {
      const group = $(this).data("group");
      $("#modal-group-method").text(group.method);
      $("#modal-group-location").text(group.location);
      $("#modal-group-subject").text(group.subject);
      $("#group-details-modal").modal("show");
    });
  });
  