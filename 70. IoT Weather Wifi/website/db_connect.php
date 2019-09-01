<?php
    // Prepare variables for database connection
    $username = "id9351053_iot";  
    $password = "EghmB7MEwVqJugt&ySit"; 
    $server = "localhost";
    $database = "id9351053_iot"; 

    // Create connection
    $conn = new mysqli($server, $username, $password, $database);

    // Check connection
    if ($conn->connect_error) {
       die("Connection failed: " . $conn->connect_error);
    } 
?>