<?php
session_start();
	include('../database.php');
	 $did=$_GET['id'];
	mysql_query("DELETE FROM studentreg WHERE id = $did");
	header("location: confirm.php");
	exit();
?>


