<?php
session_start();
error_reporting(1);
require '../config.php';
	 $id=$_GET['ids'];
	$sql = mysqli_query($con,"DELETE FROM regpin WHERE id = $id");
	if ($sql) {
		echo "deleted";
	}
	else{
		echo "notdeleted";
	}
	exit();
?>


