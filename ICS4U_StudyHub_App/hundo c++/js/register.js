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

   $("#registerform").submit(function(event) {
       event.preventDefault(); // Prevent the default form submission

       // Get the email and password values
       var email = $("#usert").val();
       var password = $("#passt").val();

       // Use Firebase Authentication to create a new user
       firebase.auth().createUserWithEmailAndPassword(email, password)
           .then((userCredential) => {
               var user = userCredential.user;
               showModal("User created successfully: " + user.email);
           })
           .catch((error) => {
               var errorMessage = error.message;
               showModal("Error: " + errorMessage);
           });
   });

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