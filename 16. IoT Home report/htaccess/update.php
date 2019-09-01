<?php
    include('db_connect.php');

    $sql = 'SELECT RELAY_1 FROM DATA WHERE ID=2';
    $result = mysqli_query($conn, $sql);
    $relay1_col = mysqli_fetch_assoc($result);
    echo $relay1_col['RELAY_1'];
 
    $sql = 'SELECT RELAY_2 FROM DATA WHERE ID=2';
    $result = mysqli_query($conn, $sql);
    $relay2_col = mysqli_fetch_assoc($result);
    echo $relay2_col['RELAY_2'];

    $sql = 'SELECT RELAY_3 FROM DATA WHERE ID=2';
    $result = mysqli_query($conn, $sql);
    $relay3_col = mysqli_fetch_assoc($result);
    echo $relay3_col['RELAY_3'];

    $sql = 'SELECT RELAY_4 FROM DATA WHERE ID=2';
    $result = mysqli_query($conn, $sql);
    $relay4_col = mysqli_fetch_assoc($result);
    echo $relay4_col['RELAY_4'];

    $conn->close();
?>