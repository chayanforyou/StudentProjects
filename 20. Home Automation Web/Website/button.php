
<?php
    $relayfile = fopen("relay.txt", "r");
	$relay = array();
	$relay[0] = fgetc($relayfile);
	$relay[1] = fgetc($relayfile);
	$relay[2] = fgetc($relayfile);
	$relay[3] = fgetc($relayfile);
	$relay[4] = fgetc($relayfile);
	if($relay[1] == '0') $relay_1 = "0";
	else $relay_1 = "1";
	if($relay[2] == '0') $relay_2 = "0";
	else $relay_2 = "1";
	if($relay[3] == '0') $relay_3 = "0";
	else $relay_3 = "1";
	if($relay[4] == '0') $relay_4 = "0";
	else $relay_4 = "1";
	fclose($relayfile);
	
	$file = fopen("relay.txt", "w") or die("Can't open!");
	
	if(isset($_POST['R1'])){
		if($relay[1] == '0') $relay_1 = "1";
		else $relay_1 = "0";
	}
	if(isset($_POST['R2'])){
		if($relay[2] == '0') $relay_2 = "1";
		else $relay_2 = "0";
	}
	if(isset($_POST['R3'])){
		if($relay[3] == '0') $relay_3 = "1";
		else $relay_3 = "0";
	}
	if(isset($_POST['R4'])){
		if($relay[4] == '0') $relay_4 = "1";
		else $relay_4 = "0";
	}
	
	$text = "R" . $relay_1 . $relay_2 . $relay_3 . $relay_4 . "\n";
	fwrite($file, $text);
	fclose($file);  
    header("Refresh:0; url=index.php");
?>