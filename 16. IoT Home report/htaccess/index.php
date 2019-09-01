<?php
    include('db_connect.php');
    
    $sql = 'SELECT GAS FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $gas_col = mysqli_fetch_assoc($result);

    echo "<h1> Smoke Sensor: ";
    echo $gas_col['GAS'];
    echo "</h1>";

    $sql = 'SELECT VIBRATE FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $vibrate_col = mysqli_fetch_assoc($result);

    echo "<h1> Vibration Sensor: ";
    if($vibrate_col['VIBRATE'] == 1) echo "Vibrating..";
    else echo "GOOD condition.";
    echo "</h1>";   

    $sql = 'SELECT SOUND FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $sound_col = mysqli_fetch_assoc($result);

    echo "<h1> Sound Sensor: ";
    if($sound_col['SOUND'] == 1) echo "Noise Detected..";
    else echo "GOOD condition.";
    echo "</h1>";

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

    $sql = 'SELECT RELAY_4 FROM DATA WHERE ID=2';
    $result = mysqli_query($conn, $sql);
    $relay4_col = mysqli_fetch_assoc($result);

    echo "<h1> Relay 4: ";
    if($relay4_col['RELAY_4'] == 1) echo "ON.";
    else echo "OFF.";
    echo "</h1>";

    $conn->close();
?>
<form action="button_action.php" method="post">
    <input type="submit" name="relay1" value="Toggle Relay 1"/>
    <input type="submit" name="relay2" value="Toggle Relay 2"/>
    <input type="submit" name="relay3" value="Toggle Relay 3"/>
    <input type="submit" name="relay4" value="Toggle Relay 4"/>
</form>