<!doctype html>

  <?php
	$myfile = fopen("data.txt", "r");
	$line1 = fgets($myfile);
	$line2 = fgets($myfile);
	$line3 = fgets($myfile);
	$line4 = fgets($myfile);
	$txt[6] = "";
	fclose($myfile);
	
	$relayfile = fopen("relay.txt", "r");
	$relay = array();
	$relay[0] = fgetc($relayfile);
	$relay[1] = fgetc($relayfile);
	$relay[2] = fgetc($relayfile);
	$relay[3] = fgetc($relayfile);
	$relay[4] = fgetc($relayfile);
	fclose($relayfile);  
 ?>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="refresh" content="1" > 
  <title>IoT Home Automation</title>
</head>

<body>
  <h1>IoT Home Automation System</h1>
  <h3>temperature: <?php echo $line1;?></h3>
  <h3>Smoke Sensor: <?php echo $line2;?></h3>
  <h3>Sound Sensor: <?php echo $line3;?></h3>
  <h3>Relay 1: <?php echo $relay[1];?></h3>
  <h3>Relay 2: <?php echo $relay[2];?></h3>
  <h3>Relay 3: <?php echo $relay[3];?></h3>
  <h3>Relay 4: <?php echo $relay[4];?></h3>
  <h3><?php echo $line4;?></h3> 

  <form action = "button.php" method="post">
    <input type="submit" name="R1" value="Toggle Relay 1"/>
    <input type="submit" name="R2" value="Toggle Relay 2"/>
    <input type="submit" name="R3" value="Toggle Relay 3"/>
    <input type="submit" name="R4" value="Toggle Relay 4"/>
  </form>
  
</body>
</html>