<?php
session_start();
include 'includes/config.php';


$reprintslip = $_SESSION['reprintslip'];
if (!isset($reprintslip)) {
	header("Location:index.php");
}


$queryslip = mysqli_query($con,"SELECT * FROM register WHERE id = '$reprintslip'");
$fetch = mysqli_fetch_array($queryslip);
?>
        
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="shortcut icon"  href="Images/bg_img.png">
<title><?php echo $fetch['surname']; ?></title>
<style type="text/css">

table tr td a{color:blue; text-decoration:none;}
table tr td a:hover{ text-decoration:underline;}
@media print{
	#printID,#closewindow,#log{display: none;}
}
body{
	color: green;
}
</style>
</head>

<body style="width:600px; margin:auto; height:auto; font-family:tahoma; font-size:11px">
<br /><br />

<table border="0px" width="100%"><br />
<tr><td width="100px" ><img height="110px" width="125px" src="Images/bg_img.png" /></td><td valign="top" style="padding:10px; font-size:14px; text-align:center"><b  style="font-size:17px">JOINT ADMISSIONS AND MATRICULATION BOARD</b><br />
...enhancing academic excellence<br />

<b style="font-family:'Times New Roman', Times, serif;">APPLICATION SLIP</b><br /><br />
<span style="font-family:'Times New Roman', Times, serif; font-size:11px; font-style:italic;">Your Secondary School Level is:</span> <b><?php echo $fetch['sec_school']; ?></b>

</td><td width="100px"><img src="<?php echo $fetch['passport']; ?>" style="width: 100%; height: 110px; border-radius: 100%;"></b></td></tr>


<table border="0px" width="100%"><br /><br /><br /><br />
<tr style="font-size:13px; font-weight:bold"><td>SURNAME</td><td>OTHER NAMES</td><td>REGISTRATION NUMBER</td></tr>
<tr style="font-size:13px;"><td><?php echo $fetch['surname']; ?></td><td><?php echo $fetch['other_names']; ?></td><td><?php echo $fetch['jamb_reg']; ?></td></tr>



<table border="0px" width="100%"><br  /><br />
<tr style="font-size:13px; font-weight:bold; text-transform: uppercase;"><td>Email</td><td>Phone No</td> <td>Date of Birth</td></tr>
<tr style="font-size:13px; text-transform:;"><td><?php echo ucfirst($fetch['email']); ?></td><td><?php echo $fetch['phone']; ?></td><td><?php echo $fetch['day_of_birth'].'-'.$fetch['month_of_birth'].'-'.$fetch['year_of_birth']; ?></td></tr>



<table border="0px" width="100%"><br  /><br />
<tr style="font-size:13px; font-weight:bold"><td>SUBJECTS</td><td>GRADE</td></tr>
<tr style="font-size:13px;"><td width="270px"><?php echo $fetch['subject1']; ?></td><td><?php echo $fetch['grade1']; ?></td></tr>
<tr style="font-size:13px;"><td width="270px"><?php echo $fetch['subject2']; ?></td><td><?php echo $fetch['grade2']; ?></td></tr>
<tr style="font-size:13px;"><td width="270px"><?php echo $fetch['subject3']; ?></td><td><?php echo $fetch['grade3']; ?></td></tr>
<tr style="font-size:13px;"><td width="270px"><?php echo $fetch['subject4']; ?></td><td><?php echo $fetch['grade4']; ?></td></tr>
<tr style="font-size:13px;"><td width="270px" style="border-top:2px solid grey;" ><b></b></td><td style="border-top:2px solid grey;"><b></b></td></tr>


<table border="0px" width="100%"><br  /><br />
<tr style="font-size:13px; font-weight:bold"><td colspan="2">SCHOOL OF CHOICE</td></tr>
<tr style="font-size:13px;"><td width="160px"><b>SCHOOL</b></td><td colspan="2"><?php echo $fetch['school']; ?></td></tr>
<tr style="font-size:13px;"><td width="160px"><b>FACULTY</b></td><td><?php echo $fetch['faculty']; ?></td><td style="color:grey;">Examination Type: <b>CBT</b></td></tr>
<tr style="font-size:13px;"><td width="160px"><b>COURSE</b></td><td colspan="2"><?php echo $fetch['course']; ?></td></tr>


<table border="0px" width="100%"><br  /><br />
<tr style="font-size:12px;"><td width="10px" style="padding:10px; border-top:2px solid grey; border-bottom:2px solid grey;"><b>NOTE</b></td><td style="padding:5px; font-size:11px; border-top:2px solid grey; border-bottom:2px solid grey;">Your can have your E-Examination at any selected location of your choice between <b>01 December, 2018</b> and <b>10 February, 2019</b></td></tr>


<table border="0px" width="100%"><br  /><br />
<tr style="font-size:11px;" align="right"><td width="480px"><b><a id="printID" href="javascript:window.print()">Print Result</b></td><td><b><a id="closewindow" style="color:red" href="index.php">Close Window</a></b></td></tr>


</table>
<!--
 <a href="javascript:window.print()">Print Slip</a>
 --->
<br /><br />
<br /><br />
<br /><br />
<br /><br />




			

</body>
</html>


