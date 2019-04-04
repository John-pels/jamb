<?php
	//Start session
	session_start();
	
	//Connect to mysql server
	require "../database.php";
	
	//Function to sanitize values received from the form. Prevents SQL injection
	function clean($str) {
		$str = @trim($str);
		if(get_magic_quotes_gpc()) {
			$str = stripslashes($str);
		}
		return mysql_real_escape_string($str);
	}
	
	//Sanitize the POST values
	$username = clean($_POST['username']);
	$password = clean($_POST['password']);
	
	//Create query
	$qry="SELECT * FROM adminlogin WHERE username='$username' AND password='$password' AND status='admin'";
	$result=mysql_query($qry);
	//Check whether the query was successful or not
	if($result) {
		if(mysql_num_rows($result) > 0) {
			//Login Successful
			session_regenerate_id();
			$m = mysql_fetch_assoc($result);
			$_SESSION['SESS_MEMBER_AMIN_ID'] = $m['id'];
			$_SESSION['SESS_MEMBER_ADMIN'] = $m['username'];

			session_write_close();
			//if ($level="admin"){
			header("location: admin.php");
			exit();
		}else {
			//Login failed
			
				echo '<script type="text/javascript">
				alert("Username/Password is Incorrect");
        window.location="../index.php";
		</script>';
			
			
		
		}
	}else {
		die("Query failed");
	}
?>