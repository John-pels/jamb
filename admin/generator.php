<?php
session_start();
require("../database.php");
error_reporting(1);
$admin = $_SESSION['SESS_MEMBER_ADMIN'];
if (!$admin){
header("location:../index.php");
}

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
		<h1><a href="#" style="font-family:impact; font-size:27px;">2015/2015 PUTME</a></h1>
		<h2><a href="#" style="font-size:13px;">RUFUS GIWA POLYTECHNIC</a></h2>
	</div>
	<div id="menu">
		<ul>
			<li class="first"><a style="font-size:15px; color:blue;" href="admin.php" title=""><---Back</a></li>
				</ul>
	</div>
	<div id="ad468x60"><a href="#"><img src="images/ad468x60.jpg" alt="" width="468" height="60" /></a></div>
</div>
<div id="page">
	<div id="content">
		<div class="boxed" style="font-size:20px;">
			<h1 class="heading" style="font-size:18px;">Welcome...You are....<span style="color:red;"><?php echo $admin; ?></span></h1>
			
			
			
			 <?php

extract($_POST);



echo "<table width=100%>";
echo "<tr><td align=center></table>";
if($submit=='submit' || strlen($subname)>0 )
{
$rs=mysql_query("select * from regcode where code='$subname'");
if (mysql_num_rows($rs)>0)
{
	echo "<br><div class=head1>This PIN has already been generated...<a href='generator.php'>Go Back</a></div>";
	exit;
}
mysql_query("insert into regcode(code, status) values ('$subname','$status')",$cn) or die(mysql_error());
echo "<p align=center>PIN <b> \"$subname \"</b> generated Successfully.</p>";
$submit="";
}
?>
<SCRIPT LANGUAGE="JavaScript">
function check() {
mt=document.form1.subname.value;
if (mt.length<1) {
alert("Please Enter Subject Name");
document.form1.subname.focus();
return false;
}
return true;
}
</script>

<div style="margin:auto;width:90%;height:190px;box-shadow:3px 3px 3px 6px #CCCCCC;text-align:left; margin-top:10px;"><br>
<center><b style="color:black; font-size:23px; text-align:center">Enter PIN (RUGIPO + 4 Digits)</b><br><br>
<form name="form1" method="post" onSubmit="return check();">
  <table width="90%"  border="0" align="center">
    <tr>
      <td width="45%" height="32"><div align="center"><strong >PIN Code </strong></div></td>
      <td width="2%" height="5">  
      <td width="53%" height="32">
        <input style="height:30px; width:100%; font-size:15px;" name="subname" placeholder="Enter Exam Name" type="text" id="subname">
		<input name="status" type="hidden" id="status" value="unused">
  
    <tr>
      <td height="26"></td>
      <td>&nbsp;</td>
      <td><input style="width:100px; height:30px;" type="submit" name="submit" value="Generate" ></td>
    </tr>
  </table>
</form>
<p>&nbsp; </p></center>
</div>
 




		</div>
	</div>
	<!-- end #content -->
	<div id="sidebar">
		<div class="boxed">
			<h2 class="heading" style="font-size:15px;">ADMINISTRATIVE SECTION</h2>
			<div class="content" style="font-size:18px;">
				You are...<span style="color:black; font-weight:bold;"><?php echo $admin; ?></span>
			</div>
		</div>
	</div>
	<!-- end #sidebar -->
</div>
<!-- end #page -->
<div style="clear: both;">&nbsp;</div>
<div id="footer">
	<p id="legal" style="font-size:16px;">Copyright &copy; <?php echo date ('Y');?> RUGIPO Online PUTME Test.  Designed by <a href="http://www.freecsstemplates.org/">Ajijola Oluwafemi Blessing</a> <span style="color:white;">07036387367</span>.</p>
	<p id="links" style="font-size:16px;"><a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a></p>
</div>
</body>
</html>
