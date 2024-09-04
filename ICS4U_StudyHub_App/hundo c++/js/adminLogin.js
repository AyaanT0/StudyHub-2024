$(document).ready(function () {
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

    $("#loginform").submit(function(e) {
        e.preventDefault();
    });

    $('#submit').click(function() {
        login();
    });

    $('#back').click(function() {
        logout();
    });

    $('#logout').click(function() {
        logout();
    });

    firebase.auth().onAuthStateChanged(user => {
        if (user) {
            window.location = 'portal.html'; // Redirect to the portal once authenticated
        }
    });

    // Function to handle login
    function login() {
        var email = document.getElementById("usert").value;
        var password = document.getElementById("passt").value;

        firebase.auth().signInWithEmailAndPassword(email, password)
            .then((userCredential) => {
                // Signed in
                var user = userCredential.user;
                // Optionally, you can handle specific user roles here if needed
                console.log("Login successful for user: ", user.email);
            })
            .catch(function(error) {
                var errorCode = error.code;
                var errorMessage = error.message;
                console.error("Error code: " + errorCode + ", message: " + errorMessage);
                showModal("Error: " + errorMessage);
            });
    }

    // Function to handle logout
    function logout() {
        firebase.auth().signOut().then(function() {
            console.log("Sign-out successful");
        }).catch(function(error) {
            console.error("Error signing out: ", error);
            showModal("Error signing out: " + error.message);
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
