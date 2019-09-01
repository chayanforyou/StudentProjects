<?php
    include('db_connect.php');
    echo "Connected to Database successfully. ";

   mysqli_query($conn, "DELETE FROM DATA WHERE ID=1"); 
   $sql = "INSERT INTO DATA (ID, GAS, VIBRATE, SOUND) VALUES ('1','".$_GET["g_value"]."','".$_GET["v_value"]."','".$_GET["s_value"]."')";    
    
    if (mysqli_query($conn, $sql)) {
       echo "New record created successfully.";
    } 
    else {
       echo "Error: " . $sql . "" . mysqli_error($conn);
    }

    $sql = 'SELECT GAS FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $gas_col = mysqli_fetch_assoc($result);

    $sql = 'SELECT VIBRATE FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $vibrate_col = mysqli_fetch_assoc($result);

    $sql = 'SELECT SOUND FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $sound_col = mysqli_fetch_assoc($result);

    $conn->close();
?> 

<!DOCTYPE HTML>
<html>
   <head>
      <title>IoT Home Report system</title>
   </head>

   <body>
      <h1>Smoke Sensor: <?=$gas_col['GAS'];?></h1>
      <h1>Vibration Sensor: <?=$vibrate_col['VIBRATE'];?></h1>
      <h1>Sound Sensor: <?=$sound_col['SOUND'];?></h1>
   </body>
</html>