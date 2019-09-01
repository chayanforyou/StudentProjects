<?php
    // Prepare variables for database connection
    $username = "joyantoc_eeelabs";  
    $password = "48ubujU6O0"; 
    $server = "localhost";
    $database = "joyantoc_eeelabs"; 

    // Create connection
    $conn = new mysqli($server, $username, $password, $database);

    // Check connection
    if ($conn->connect_error) {
       die("Connection failed: " . $conn->connect_error);
    } 
?>