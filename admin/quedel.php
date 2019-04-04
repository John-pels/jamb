<?php
session_start();
	include('../config.php');
	 $did=$_GET['delid'];
	mysql_query("DELETE FROM question WHERE que_id = $did");
	echo '<script type="text/javascript">
alert("The selected question has successfully been deleted from teh Database");
window.location="adquest.php";
</script>';
	
	
	exit();
?>





