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
<body style="background: url('Images/4.jpg'); background-attachment: fixed; background-size: cover;">
<form action="submitexam.php" method="POST">
	<div id="page" align="center">
		<div id="content" style="width:800px">
			<div id="logo" style="position: fixed;">
				<div style="margin-top:35px; font-size:30px;" class="whitetitle">UTME<br />2018/2019<br />  EXAM PORTAL</div>
			</div>
			<div id="topheader">
				<div align="left" class="bodytext" style="position: fixed; background-color: #F0F0F0; width:526px; height:97px; text-align: 
				center;">
					<br />
					<strong style="font-size:16px; color: green;">JOINT ADMISSIONS AND MATRICULATION BOARD</strong><br />
					<span style="font-size:15px; color: green; font-style: italic;">
					enhancing academic excellence..<br />
					Phone: +234(0)8188974303<br />
					oluseyiajeigbe@yahoo.com
					</span>
					
				</div>

				<div id="toplinks" class="smallgraytext" style="position: fixed;">
					<a style="margin-bottom: 10px; padding: 10px;" href="exam-welcome.php" class="active btn btn-warning"><---Go Back</a></a>
					<p><button type="submit" name="btnsubmitexam"  class="active btn btn-danger" style="padding: 10px;font-weight: bolder;" onclick="return confirm('Are you sure you are ready to Submit?')">End Exam</button></p>
				</div>
			</div>
			<div id="menu">
				<div align="right" class="smallwhitetext" style="padding:9px;">
					<span style=" color:black; font-size:18px; text-shadow:2px 2px 3px white;"></span> <a style="font-size:16px"></a><span style="color:red; font-size:18px; text-shadow:1px 1px 2px white;"></span>
				</div>
			</div>
			
			<div id="contenttext">
				<div style="padding:10px"><br />
					<span class="titletext" style="font-size:19px;color: green;">Carefully select your answers from the Options Below</span><hr />
					</div>
					<?php include 'includes/timer.php'; ?>
									<?php
					$timeri = date('H:i:s');
					$timerselect = mysqli_query($con,"SELECT * FROM timer WHERE student_id = '$takeexam' ");
					$rowtimerselect = mysqli_num_rows($timerselect);
					$fetchrowtimerselect = mysqli_fetch_array($timerselect);
					if ($rowtimerselect>0) {
						//echo $fetchrowtimerselect['timer'];
					}
					else if ($rowtimerselect<=0){

					$timer = mysqli_query ($con,"INSERT INTO timer (student_id,timer) VALUES ('$takeexam', '$timeri')");
					//$numtimer = mysqli_num_rows($timer);
					}
					?>
					<div class="bodytext" style="padding:19px; font-size:20px; color:black;" align="justify" >
					
					
					
					 <table  align=left >

<tr>
	<style type="text/css">
	.content{
		display: none;
		background-color: ;
		padding: ;
	}
</style>
	<script src="js/function.js" type="text/javascript"></script>
<div class="walex" align="">
<?php
$queryselectexam = mysqli_query($con,"SELECT * FROM register WHERE id = '$takeexam'");
$countselectexam = mysqli_num_rows($queryselectexam);
$fetchselectexam = mysqli_fetch_array($queryselectexam);
$subject1 = $fetchselectexam['subject1'];
$subject2 = $fetchselectexam['subject2'];
$subject3 = $fetchselectexam['subject3'];
$subject4 = $fetchselectexam['subject4'];

?>		<div style="position: ;">
        <a href="javascript:tabSwitch('tab_1', 'content_1');" id="tab_1" class="active btn btn-primary" style="padding: 10px;"><?php echo $subject1; ?></a>     
        <a href="javascript:tabSwitch('tab_2', 'content_2');" id="tab_2" class="active btn btn-primary" style="padding: 10px;"><?php echo $subject2; ?></a>  
        <a href="javascript:tabSwitch('tab_3', 'content_3');" id="tab_3" class="active btn btn-primary" style="padding: 10px;"><?php echo $subject3; ?></a> 
        <a href="javascript:tabSwitch('tab_4', 'content_4');" id="tab_4" class="active btn btn-primary" style="padding: 10px;"><?php echo $subject4; ?></a>  
        </div>

<?php include 'includes/subject1.php'; ?>
<?php include 'includes/subject2.php'; ?>
<?php include 'includes/subject3.php'; ?>
<?php include 'includes/subject4.php'; ?>

</div>


</table>

					
					
					
					
				</div>
			</div>
			<div id="leftpanel" style="position: fixed; margin-top: 180px;">
				<div align="justify" class="graypanel" style="font-size:20px;">
					<span class="smalltitle" style="font-size:17px;color: green;">Student Information</span><br />
					 <table width="53%" cellpadding="5px"  border="0" style="border-color:white" align="center">
<tr><td><img border="0" src="<?php echo $fetch['passport']; ?>" width="210px" height="200px" alt="Your Name" id="stimg" height"20px"></td></tr>
</table><br />
<span style="font-family:tahoma; text-transform:uppercase; font-size:15px; color:green">Full Name: <br /> <b style="color:green;"><?php echo $fetch['surname']; ?> <?php echo $fetch['other_names']; ?></span><br /><br />
</b>
<span style="font-family:tahoma; text-transform:uppercase; font-size:18px; color:green">REG NO:  <br /><b style="color:green;"><?php echo $fetch['jamb_reg']; ?></span><br /><br />

</b>



						</div>
			</div>
			<!-- <div id="footer" class="smallgraytext">
				<a style="font-size:17px; font-weight:100; color: black;" >The Polytechnic, Ibadan &copy; 2018 <a style="font-size:17px; font-weight:100; color: black;">All Right Reserved</a>
				
			</div> -->
		</div>
	</div>
	</form>
</body>
</html>