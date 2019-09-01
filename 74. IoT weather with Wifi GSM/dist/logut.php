<?php 
	session_start();
	ob_start();
	unset($_SESSION['user']);
	header('location: index.php');
	ob_end_flush();
?>