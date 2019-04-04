<?php
session_start();
include 'includes/config.php';


$takeexam = $_SESSION['takeexam'];
if (!isset($takeexam)) {
	header("Location:index.php");
}

session_unset($takeexam);
session_destroy();
header("Location:index.php");
?>