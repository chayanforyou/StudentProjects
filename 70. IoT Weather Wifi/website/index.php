<?php
    include('db_connect.php');
    
    $sql = 'SELECT SOIL FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $soil_col = mysqli_fetch_assoc($result);

    echo "<h1> Soil Mositure Sensor: ";
    echo $soil_col['SOIL'];
    echo "%</h1>";

    $sql = 'SELECT TEMP FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $temp_col = mysqli_fetch_assoc($result);

    echo "<h1> Temperature Sensor: ";
    echo $temp_col['TEMP'];
    echo " degree C</h1>";   

    $sql = 'SELECT HUMIDITY FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $hum_col = mysqli_fetch_assoc($result);

    echo "<h1> Humidity Sensor: ";
    echo $hum_col['HUMIDITY'];
    echo "%</h1>";

    $sql = 'SELECT RELAY_1 FROM DATA WHERE ID=2';
    $result = mysqli_query($conn, $sql);
    $relay1_col = mysqli_fetch_assoc($result);

    echo "<h1> Relay 1: ";
    if($relay1_col['RELAY_1'] == 1) echo "ON.";
    else echo "OFF.";
    echo "</h1>";

    $sql = 'SELECT RELAY_2 FROM DATA WHERE ID=2';
    $result = mysqli_query($conn, $sql);
    $relay2_col = mysqli_fetch_assoc($result);

    echo "<h1> Relay 2: ";
    if($relay2_col['RELAY_2'] == 1) echo "ON.";
    else echo "OFF.";
    echo "</h1>";

    $sql = 'SELECT RELAY_3 FROM DATA WHERE ID=2';
    $result = mysqli_query($conn, $sql);
    $relay3_col = mysqli_fetch_assoc($result);

    echo "<h1> Relay 3: ";
    if($relay3_col['RELAY_3'] == 1) echo "ON.";
    else echo "OFF.";
    echo "</h1>";

    $conn->close();
?>

<!DOCTYPE HTML>
<html>
   <head>
      <title>IoT Weather Automation</title>
   </head>

   <body>
      <form action="button_action.php" method="post">
		<input type="submit" name="relay1" value="Toggle Relay 1"/>
		<input type="submit" name="relay2" value="Toggle Relay 2"/>
		<input type="submit" name="relay3" value="Toggle Relay 3"/>
	  </form>
   </body>
</html>

