<?php
session_start();
include 'includes/config.php';


$takeexam = $_SESSION['takeexam'];
if (!isset($takeexam)) {
	header("Location:index.php");
}


$queryslip = mysqli_query($con,"UPDATE register SET status = 'done' WHERE id = '$takeexam'");
if ($queryslip) {
	session_unset($takeexam);
	session_destroy();
	unset($takeexam);
	header("Location:index.php");
}
?>
