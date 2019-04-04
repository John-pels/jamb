<?php

/*session_start();
error_reporting(1);



require '../config.php';
$admin = $_SESSION['SESS_MEMBER_ADMIN'];
if (!$admin){
header("location:../index.php");
}*/
include '../includes/config.php';

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
input, select{font-size:16px;}

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
			<h1 class="heading" style="font-size:18px;">Welcome...You are....<span style="color:red;">ADMIN</span></h1>
			
			
			


<div style="margin:auto;width:95%;height:auto;box-shadow:3px 3px 3px 6px #CCCCCC;text-align:left; margin-top:10px;"><br>
<center><b style="color:black; font-size:25px; text-align:center">Add PUTME Questions</b><br>
<?php
if (isset($_POST['submit'])) {
	$classid = $_POST['classname'];
	$subject = $_POST['subject'];
	$addque = $_POST['addque'];
	$ans1 = $_POST['ans1'];
	$ans2 = $_POST['ans2'];
	$ans3 = $_POST['ans3'];
	$ans4 = $_POST['ans4'];
	$anstrue = $_POST['anstrue'];

	$query = mysqli_query($con,"INSERT into question (class_id,subject_id,que_desc,option1,option2,option3,option4,tru_ans) VALUES ('$classid','$subject','$addque','$ans1','$ans2','$ans3','$ans4','$anstrue')") or die(mysqli_error($con));

	/*if ($query) {
		echo "<font color='green'>PUTME QUESTIONS Added Successfully</font>";
	}
	else{
		echo "<font color='red'>Error in Adding PUTME QUESTIONS</font>";
	}*/
}
?>
<form name="form1" method="post" ">
  <table width="95%"  border="0" align="center">
    <tr>
      <td width="45%" height="32"><div align="left"><strong>Select Class Name </strong></div></td>
      <td width="1%" height="5">  
      <td width="45%" height="32"><select style="width:100%; height:30px;" name="classname" id="testid">
 <?php
      $query = mysqli_query($con,"SELECT * FROM class");
      $count = mysqli_num_rows($query);
      if ($count==0) {
       	echo "No Class for now";
       } 
       else{
       	for ($i=1; $i <=$count ; $i++) { 
       		$fetch = mysqli_fetch_array($query);
       		?>
       		<option value="<?php echo $fetch['class_id']; ?>"><?php echo wordwrap($fetch['class_name']); ?></option>
       		<?php
       	}
       }
      ?>
      </select>
        </td></tr>

           <tr>
      <td width="45%" height="32"><div align="left"><strong>Select Subject </strong></div></td>
      <td width="1%" height="5">  
      <td width="45%" height="32"><select style="width:100%; height:30px;" name="subject" id="testid">
 <?php
      $query = mysqli_query($con,"SELECT * FROM subject JOIN class ON class.class_id = subject.class_id");
      $count = mysqli_num_rows($query);
      if ($count==0) {
       	echo "No Class for now";
       } 
       else{
       	for ($i=1; $i <=$count ; $i++) { 
       		$fetch = mysqli_fetch_array($query);
       		?>
       		<option value="<?php echo $fetch['sub_id']; ?>"><?php echo $fetch['sub_name']; ?> (<?php echo $fetch['class_name']; ?>)</option>
       		<?php
       	}
       }
      ?>
      </select>
        </td></tr>
		
		  
	
    <tr>
        <td height="26" width="45%"><div align="left"><strong> Enter Question </strong></div></td>
        <td>&nbsp;</td>
	    <td><textarea style="width:100%; height:60px; resize: none;" name="addque" cols="32" rows="2" id="addque"></textarea></td>
    </tr>
    <tr>
      <td height="26"><div align="left"><strong>Enter Answer1 </strong></div></td>
      <td>&nbsp;</td>
      <td><input style="width:100%; height:25px;" name="ans1" type="text" id="ans1"  maxlength="45"></td>
    </tr>
    <tr>
      <td height="26"><div align="left"><strong>Enter Answer2 </strong></div></td>
      <td>&nbsp;</td>
      <td><input style="width:100%; height:25px;"  name="ans2" type="text" id="ans2" maxlength="45"></td>
    </tr>
    <tr>
      <td height="26"><div align="left"><strong>Enter Answer3 </strong></div></td>
      <td>&nbsp;</td>
      <td><input style="width:100%; height:25px;" name="ans3" type="text" id="ans3"  maxlength="45"></td>
    </tr>
    <tr>
      <td height="26"><div align="left"><strong>Enter Answer4</strong></div></td>
      <td>&nbsp;</td>
      <td><input style="width:100%; height:25px;" name="ans4" type="text" id="ans4"  maxlength="45"></td>
    </tr>
    <tr>
      <td height="26"><div align="left"><strong>Enter True Answer </strong></div></td>
      <td>&nbsp;</td>
      <td><input style="width:100%; height:25px;" name="anstrue" type="text" id="anstrue"  maxlength="45"></td>
    </tr>
    <tr>
      <td height="26"></td>
      <td>&nbsp;</td>
      <td><input style="width:100px; height:30px;" type="submit" name="submit" value="Add" ></td>
    </tr>
  </table>
</form></center>
<p>&nbsp; </p>
</div>
  
  
 




		</div>
	</div>
	<!-- end #content -->
	<div id="sidebar">
		<div class="boxed">
			<h2 class="heading" style="font-size:15px;">ADMINISTRATIVE SECTION</h2>
			<div class="content" style="font-size:18px;">
				You are...<span style="color:black; font-weight:bold;">ADMIN</span><hr /><br />
				
				<span style="font-size:15px; color:black;"><b>SUGGESTED QUESTION(S)</b><br /></span>
				<span style="font-size:15px; color:black;">
				
				<b style="text-decoration:underline;">Science Class</b><br />
				
				<?php
				/*$top1 = $_GET['more1'];
				if ($top1){
				echo '<fieldset style="font-size:12px; padding:3px"><legend style="font-weight:bold"><b>Read More</b></legend>';
				echo '<span style="color:blue;">';
				
				$rs2=mysql_query("Select * from suggest WHERE class='science' and id=$top1");
				 while($row2=mysql_fetch_array($rs2)){
				 echo $q_es = $row2['question'];
				 } echo '	 </span></fieldset>';
				 }*/
				
				 ?>
			
				<span style="font-size:13px">
				
				</span>
				
				
				<b style="text-decoration:underline">Art Class</b><br />
		
		
				
				
				<span style="font-size:13px">
				</span>
				
				<b style="text-decoration:underline">Commercial Class</b><br />
			
				
				</span>
				
				
				</span>
				
			</div>
		</div>
	</div>
	<!-- end #sidebar -->
</div>
<!-- end #page -->
<div style="clear: both;">&nbsp;</div>
<div id="footer">
	<p id="legal" style="font-size:16px;">Copyright &copy; <?php echo date ('Y');?> THE POLYTECHNIC, IBADAN Online PUTME Test. </p>
	<p id="links" style="font-size:16px;"><a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a></p>
</div>
</body>
</html>
