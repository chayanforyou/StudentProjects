<?php
    include('db_connect.php');
    
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
      <h1>IoT Drunk Drive Detector System</h1>
	  <h1>Alcohol: <?=$MQ2['MQ2'];?>%</h1>
	  <h1>Distance: <?=$SONAR['SONAR'];?> centimetres</h1>
      <h1>Vibrator: <?=$VIBRATOR['VIBRATOR'];?></h1>
      <h1>GPS: <?=$GPS['GPS'];?></h1>
	  <iframe src="<?=$GPS['GPS'];?>" height="200" width="300"></iframe>
   </body>
</html>