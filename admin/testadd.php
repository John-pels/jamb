<?php

session_start();
error_reporting(1);



require '../config.php';
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
		<h2><a href="#" style="font-size:13px;">THE POLYTECHNIC, IBADAN</a></h2>
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
			
<div style="margin:auto;width:95%;height:200px;box-shadow:3px 3px 3px 5px #CCCCCC;text-align:left; padding:10px; margin-top:10px;">


<h2><div  class=head1><center>	Add Secondary Level</center></div></h2>
<?php
if (isset($_POST['submit'])) {
	$subid = $_POST['subid'];
	$studentclass = $_POST['studentclass'];
	$totque = $_POST['totque'];

	$query = mysqli_query($con,"INSERT into studentclass (examname_id,studentclass_name,total_que) VALUES ('$subid','$studentclass','$totque')");

	if ($query) {
		echo "<font color='green'>Class Added Successfully</font>";
	}
	else{
		echo "<font color='red'>Error in Adding Class</font>";
	}
}
?>
<form name="form1" method="post" ">
  <table width="90%"  border="0" align="center">
    <tr>
      <td width="49%" height="32"><div align="left"><strong>Enter Exam title</strong></div></td>
      <td width="3%" height="5">  
      <td width="48%" height="32"><select style="width:100%; height:30px;" name="subid">
      <?php
      $query = mysqli_query($con,"SELECT * FROM exam_name");
      $count = mysqli_num_rows($query);
      if ($count==0) {
       	echo "No exam name for now";
       } 
       else{
       	for ($i=1; $i <=$count ; $i++) { 
       		$fetch = mysqli_fetch_array($query);
       		?>
       		<option value="<?php echo $fetch['exam_id']; ?>"><?php echo wordwrap($fetch['exam_name']); ?></option>
       		<?php
       	}
       }
      ?>
      
      </select>
        
    <tr>
        <td height="26"><div align="left"><strong> Enter Student Class </strong></div></td>
        <td>&nbsp;</td>
	  <td><input style="width:100%; height:30px;" name="studentclass" type="text" id="testname"></td>
    </tr>
    <tr>
      <td height="26"><div align="left"><strong>Enter Total Question </strong></div></td>
      <td>&nbsp;</td>
      <td><input style="width:100%; height:30px;" name="totque" type="text" id="totque"></td>
    </tr>
    <tr>
      <td height="26"></td>
      <td>&nbsp;</td>
      <td><input style="width:100px; height:30px;" type="submit" name="submit" value="Add" ></td>
    </tr>
  </table>
</form>
<p>&nbsp; </p>
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
	<p id="legal" style="font-size:16px;">Copyright &copy; <?php echo date ('Y');?> THE POLYTECHNIC, IBADAN Online PUTME Test. .</p>
	<p id="links" style="font-size:16px;"><a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a></p>
</div>
</body>
</html>
