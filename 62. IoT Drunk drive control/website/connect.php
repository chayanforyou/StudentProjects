<?php
    include('db_connect.php');
    echo "Connected to Database successfully. ";

   mysqli_query($conn, "DELETE FROM DATA WHERE ID=1"); 
   $sql = "INSERT INTO DATA (ID, MQ2, SONAR, VIBRATOR, GPS) VALUES ('1','".$_GET["MQ2"]."','".$_GET["SONAR"]."','".$_GET["VIBRATOR"]."','".$_GET["GPS"]."')";    
    
    if (mysqli_query($conn, $sql)) {
       echo "New record created successfully.";
    } 
    else {
       echo "Error: " . $sql . "" . mysqli_error($conn);
    }

    $sql = 'SELECT MQ2 FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $MQ2 = mysqli_fetch_assoc($result);

    $sql = 'SELECT SONAR FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $SONAR = mysqli_fetch_assoc($result);

    $sql = 'SELECT VIBRATOR FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $VIBRATOR = mysqli_fetch_assoc($result);
	
	$sql = 'SELECT GPS FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $GPS = mysqli_fetch_assoc($result);

    $conn->close();
?> 

<!DOCTYPE HTML>
<html>
   <head>
      <title>IoT Drunk Drive Detector System</title>
   </head>

   <body>
      <h1>Alcohol: <?=$MQ2['MQ2'];?>%</h1>
	  <h1>Distance: <?=$SONAR['SONAR'];?> centimetres</h1>
      <h1>Vibrator: <?=$VIBRATOR['VIBRATOR'];?></h1>
      <h1>GPS: <?=$GPS['GPS'];?></h1>
   </body>
</html>