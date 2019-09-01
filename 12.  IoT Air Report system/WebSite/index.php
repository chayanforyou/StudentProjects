<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="refresh" content="1" > 
  <title>IoT Air Report</title>
</head>

<body>
  <h1>IoT Air Report System</h1>
  <?php
    $myfile = fopen("data.txt", "r");
    $line1 = fgets($myfile);
	$line2 = fgets($myfile);
	$line3 = fgets($myfile);
	$line4 = fgets($myfile);
	$line5 = fgets($myfile);
	$line6 = fgets($myfile);
    fclose($myfile);
  ?>
  <h3>Sound Sensor: <?php echo $line1;?></h3>
  <h3>Dust Sensor: <?php echo $line2;?></h3>
  <h3>Smoke Sensor: <?php echo $line3;?></h3>
  <h3><?php echo $line6;?></h3> 
</body>
</html>