<?php
	/*session_start();
	error_reporting(1);



	require '../config.php';
	$admin = $_SESSION['SESS_MEMBER_ADMIN'];
	if (!$admin){
	header("location:../index.php");
	}*/

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Administrative Page</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
table tr td a{text-decoration:none;}
table tr td a:hover{text-decoration:underline; color:blue;}


</style>
</head>
<body>
<div id="header">
	<div id="logo">
		<h1><a href="#" style="font-family:impact; font-size:27px;"><?php echo date ('Y');?>/<?php echo substr(date("Y")+1,+2) ?> PUTME</a></h1>
		<h2><a href="#" style="font-size:13px;">THE POLYTECHNIC, IBADAN</a></h2>
	</div>
	<div id="menu">
		<ul>
			<li class="first"><a style="font-size:15px; color:red;" href="../logout.php" title="">Logout</a></li>
				</ul>
	</div>
	<div id="ad468x60"><a href="#"><img src="images/ad468x60.jpg" alt="" width="468" height="60" /></a></div>
</div>
<div id="page">
	<div id="content">
		<div class="boxed" style="font-size:20px;">
			<h1 class="heading" style="font-size:18px;">Welcome...You are....<span style="color:red;">ADMIN</span>
			
			</h1>
			
			
			
			<div style="margin:auto;width:95%;height:220px;box-shadow:3px 3px 3px 5px #CCCCCC;text-align:left;  margin-top:10px;">

<div style="padding:10px; "><table width="100%" border="0px" cellpadding="5px">
<tr>
<td width="55%"><p class="styl"><a href="subadd.php" style="font-size:18px">Add Exam Title</a></p></td>
<td><p class="ste7"><a href="testadd.php" style="font-size:18px">Add Secondary Level</a></p></td></tr>
<tr>
<td><p class="style7"><a href="questionadd.php" style="font-size:18px">Add Question </a></p></td>
<td><p class="style7"><a href="confirm.php" style=" font-size:18px">Confirm Jamb No</a></p></td>
</tr>
<tr>
<td><p class="style7"><a href="auto.php?idpin=pin" style="color:#996; font-size:18px; color:red;" title="You can only generate 20 at once" >Generate Registration PINS</a></p></td>






<td><p class="style7"><a href="pinlist.php" style="color:#669; font-size:18px; color:red;">List of Generated PINS</a></p></td></tr>
</table>

<p align="center" class="head1">&nbsp;</p>
</div>
</div>





		</div>
	</div>
	<!-- end #content -->
	<div id="sidebar">
		<div class="boxed">
			<h2 class="heading" style="font-size:15px;">ADMINISTRATIVE SECTION</h2>
			<div class="content" style="font-size:18px;">
				You are...<span style="color:black; font-weight:bold;">ADMIN</span><br /><br />
				<div class="cbttest"><a style="color:#003399" href="adquest.php">CBT Questions Setting</a></div>
			
			</div>
		</div>
	</div>
	<!-- end #sidebar -->
</div>
<!-- end #page -->
<div style="clear: both;">&nbsp;</div>
<div id="footer">
	<p id="legal" style="font-size:16px; height: auto;">Copyright &copy; <?php echo date ('Y');?>/<?php echo substr(date("Y")+1,+2) ?> THE POLYTECHNIC, IBADAN Online PUTME Test <br> <a href="http//www.fb.com/walexhcy">walexhcy</a>  .</p>
	<p id="links" style="font-size:16px;"><a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a></p>
</div>
</body>
</html>
