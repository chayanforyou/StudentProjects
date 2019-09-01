<?php
    include('db_connect.php');
    echo "Connected to Database successfully. ";

   mysqli_query($conn, "DELETE FROM DATA WHERE ID=1"); 
   $sql = "INSERT INTO DATA (ID, SOIL, TEMP, HUMIDITY) VALUES ('1','".$_GET["s_value"]."','".$_GET["t_value"]."','".$_GET["h_value"]."')";    
    
    if (mysqli_query($conn, $sql)) {
       echo "New record created successfully.";
    } 
    else {
       echo "Error: " . $sql . "" . mysqli_error($conn);
    }

    $sql = 'SELECT SOIL FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $soil_col = mysqli_fetch_assoc($result);

    $sql = 'SELECT TEMP FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $temp_col = mysqli_fetch_assoc($result);

    $sql = 'SELECT HUMIDITY FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $hum_col = mysqli_fetch_assoc($result);

    $conn->close();
?> 

<!DOCTYPE HTML>
<html>
   <head>
      <title>IoT Weather Automation</title>
   </head>

   <body>
      <h1>Soil Mositure Sensor: <?=$soil_col['SOIL'];?></h1>
      <h1>Temperature Sensor: <?=$temp_col['TEMP'];?></h1>
      <h1>Humidity Sensor: <?=$hum_col['HUMIDITY'];?></h1>
   </body>
</html>