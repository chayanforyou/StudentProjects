<?php
    // Prepare variables for database connection
    $username = "id6644458_energymeter";  
    $password = "wNZGChX#66B&bNuJ5o1i"; 
    $server = "localhost";
    $database = "id6644458_energymeter"; 

    // Create connection
    $conn = new mysqli($server, $username, $password, $database);

    // Check connection
    if ($conn->connect_error) {
       die("Connection failed: " . $conn->connect_error);
    } 
?>