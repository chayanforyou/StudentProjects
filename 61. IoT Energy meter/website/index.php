<?php
    include('db_connect.php');
    
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
      <title>IoT Enery Meter System</title>
   </head>

   <body>
      <h1>IoT Enery Meter System</h1>
	  <h1>Source Power: <?=$s_col['SOURCE'];?> WATT</h1>
      <h1>Used Power: <?=$u_col['USED'];?> WATT</h1>
      <h1>Theft Power: <?=$t_col['THEFT'];?> WATT</h1>
   </body>
</html>