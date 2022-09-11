<html>
<head><title>Welcome to my gcp test blog</title></head>
<body>

<img src='https://storage.googleapis.com/image.png'>
<h1>Welcome to my excellent blog</h1>
<?php
 $dbserver = "CLOUDSQLIP";   // ENTER YOUR CLOUD SQL Public IP here
$dbuser = "blogdbuser";      // ENTER THE CLOUD SQL User
$dbpassword = "DBPASSWORD";  //Enter the password
// In a production blog, BAD IDEA to store the MySQL
// password in the document root. Instead, store it in a
// configuration file elsewhere on the web server VM instance.
$conn = new mysqli($dbserver, $dbuser, $dbpassword);
if (mysqli_connect_error()) {
        echo ("Database connection failed: " . mysqli_connect_error());
} else {
        echo ("Database connection succeeded.");
}
?>
</body></html>