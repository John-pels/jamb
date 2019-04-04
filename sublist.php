<?php
session_start();
include 'includes/config.php';


$takeexam = $_SESSION['takeexam'];
if (!isset($takeexam)) {
	header("Location:index.php");
}


$queryslip = mysqli_query($con,"SELECT * FROM register WHERE id = '$takeexam'");
$fetch = mysqli_fetch_array($queryslip);
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="author" content="Wink Hosting (www.winkhosting.com)" />
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<link rel="stylesheet" href="images/style.css" type="text/css" />
	<link rel="shortcut icon"  href="Images/bg_img.png">
	  <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<title>JAMB</title>
	<style type="text/css">
	img{border:1px solid #666666; box-shadow:5px 5px 29px grey;}
	table tr td a{color:black; text-decoration:none; line-height:30px;}
	table tr td a:hover{color:black; text-decoration:none; color:#006666}
	#stimg:hover{opacity: 0.5; cursor: pointer; transition: 1s;}
	
	</style>
</head>
<body style="background: url(Images/4.jpg);background-attachment: fixed; background-size: cover;">
	<div id="page" align="center">
		<div id="content" style="width:800px">
			<div id="logo">
				<div style="margin-top:35px; font-size:30px;" class="whitetitle">UTME<br />2018/2019<br /> </div>
			</div>
			<div id="topheader">
				<div align="left" class="bodytext" style="text-align: center;color: green;">
					<br />
					<strong style="font-size:16px">JOINT ADMISSIONS AND MATRICULATION BOARD</strong><br />
					<span style="font-size:15px; font-style: italic; ">
					enchancing academic excellence...<br />
					Phone: +234(0)8188974303<br />
					oluseyiajeigbe@yahoo.com
					</span>
					
				</div>
				<div id="toplinks" class="smallgraytext">
					<a style="color:red; font-size:15px;text-align: right;" href="exam-welcome.php"></a></a>
				</div>
			</div>
			<div id="menu">
				<div align="right" class="smallwhitetext" style="padding:9px;">
					
				</div>
			</div>
			
			<div id="contenttext">
				<div style="padding:10px"><br />
					<span class="titletext" style="font-size:19px;">Please carefully read the instructions below:</span> <hr style="" />
					</div>
									
					<div class="bodytext" style="padding:19px; font-size:20px; color:black;" align="justify" >
					
					
					
					 <table  align=left >

<tr><td align=left ><a  href=javascript:void();></a>
<blockquote style="text-align: justify;">1. Do not refresh the page when you start the examination.<br>
2. Carefully select your thick your answer from the options. <br>3. Do not click start examination button until you are told to do so. <br> 4. Do not click End exam button if you have not finish your Examination.</blockquote>
<p align="center"><a href="startexam.php"><button class="btn btn-primary">Start Examination &raquo;</button></a></p>
</table>

					
					
					
					
				</div>
			</div>
			<div id="leftpanel">
				<div align="justify" class="graypanel" style="font-size:20px;">
					<span class="smalltitle" style="font-size:17px; color: green; text-align: center;">Student Information</span><br />
					 <table width="53%" cellpadding="5px"  border="0" style="border-color:white" align="center">
<tr><td><img border="0" src="<?php echo $fetch['passport']; ?>" width="210px" height="200px" alt="Your Name" id="stimg" height"20px"></td></tr>
</table><br />
<span style="font-family:tahoma; text-transform:uppercase; font-size:15px; color:green">Full Name: <br /> <b style="color:green"><?php echo $fetch['surname']; ?> <?php echo $fetch['other_names']; ?></span><br /><br />
</b>
<span style="font-family:tahoma; text-transform:uppercase; font-size:18px; color:green">REG NO:  <br /><b style="color:green"><?php echo $fetch['jamb_reg']; ?></span><br /><br />

</b>



						</div>
			</div>
			<div id="footer" class="smallgraytext">
				<a style="font-size:17px; font-weight:100; color: green;font-style: italic;" >Joint Admission and Matriculation Board &copy; 2018 <br> <a style="font-size:17px; font-weight:100; color: green;font-style: italic;">All Right Reserved</a>
				
			</div>
		</div>
	</div>
</body>
</html>