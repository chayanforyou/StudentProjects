<?php
    include('db_connect.php');
    echo "Connected to Database successfully. ";

   mysqli_query($conn, "DELETE FROM DATA WHERE ID=1"); 
   $sql = "INSERT INTO DATA (ID, SOURCE, USED, THEFT) VALUES ('1','".$_GET["s_value"]."','".$_GET["u_value"]."','".$_GET["t_value"]."')";    
    
    if (mysqli_query($conn, $sql)) {
       echo "New record created successfully.";
    } 
    else {
       echo "Error: " . $sql . "" . mysqli_error($conn);
    }

    $sql = 'SELECT SOURCE FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $s_col = mysqli_fetch_assoc($result);

    $sql = 'SELECT USED FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $u_col = mysqli_fetch_assoc($result);

    $sql = 'SELECT THEFT FROM DATA WHERE ID=1';
    $result = mysqli_query($conn, $sql);
    $t_col = mysqli_fetch_assoc($result);

    $conn->close();
?> 

<!DOCTYPE HTML>
<html>
   <head>
      <title>IoT Energy Meter System</title>
   </head>

   <body>
      <h1>Source Power: <?=$s_col['SOURCE'];?> WATT</h1>
      <h1>Used Power: <?=$u_col['USED'];?> WATT</h1>
      <h1>Theft Power: <?=$t_col['THEFT'];?> WATT</h1>
   </body>
</html>