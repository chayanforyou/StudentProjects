<!doctype html>

 <?php
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
  <title>IoT Home Automation</title>
</head>

<body>
  <h1 id="relay"><?php echo implode("", $relay)?></h1>
</body>
</html>