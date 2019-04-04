<?php
session_start();
	include('../database.php');
	 $did=$_GET['id'];
	mysql_query("DELETE FROM suggest WHERE id = $did");
	header("location: questionadd.php");
	exit();
?>


