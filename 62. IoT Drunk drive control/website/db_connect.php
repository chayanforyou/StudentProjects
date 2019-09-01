<?php
    // Prepare variables for database connection
    $username = "id8011293_iotdrunk";
    $password = "JQRR^z8OEL(kvQB2cOfe";
    $server = "localhost";
    $database = "id8011293_iotdrunk";

    // Create connection
    $conn = new mysqli($server, $username, $password, $database);

    // Check connection
    if ($conn->connect_error) {
       die("Connection failed: " . $conn->connect_error);
    } 
?>