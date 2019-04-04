<?php
session_start();
include 'includes/config.php';


$checkresult = $_SESSION['checkresult'];
if (!isset($checkresult)) {
	header("Location:index.php");
}


$queryslip = mysqli_query($con,"SELECT * FROM result WHERE student_id = '$checkresult' ");
$count = mysqli_num_rows($queryslip);
$fetch = mysqli_fetch_array($queryslip);
$total = $fetch['total'];
$message = '';

		if ($total >=0 && $total <= 120)
		 {
			$message = "You are only Eligible for Colleges of Education";
		}
				else if ($total >= 121  && $total <= 179) 
				{
					$message = "You are only Eligible for Polytechnics or Colleges of Education";
				}
		elseif ($total >= 180) 
				{
					$message = "You are  Eligible for Colleges of Education,Polytechnics and Universities";
				}
		
					else 
						{
								$message = "Not Eligible for Admission into tertiary Institution!";
						}
?>


<?php

$querydata = mysqli_query($con,"SELECT * FROM register WHERE id = '$checkresult' ");
$counter = mysqli_num_rows($querydata);
$select = mysqli_fetch_array($querydata);
?>
        


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="shortcut icon"  href="Images/bg_img.png">
<title><?php echo $select['surname']; ?></title>
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

<b style="font-family:'Times New Roman', Times, serif;">NOTIFICATION OF RESULT</b><br /><br />
<span style="font-family:'Times New Roman', Times, serif; font-size:11px; font-style:italic;">Your Secondary School Level is:</span> <b><?php echo $select['sec_school']; ?></b>

</td><td width="100px"><img src="<?php echo $select['passport']; ?>" style="width: 100%; height: 110px; border-radius: 100%;"></b></td></tr>


<table border="0px" width="100%"><br /><br /><br /><br />
<tr style="font-size:13px; font-weight:bold"><td>SURNAME</td><td>OTHER NAMES</td><td>REGISTRATION NUMBER</td></tr>
<tr style="font-size:13px;"><td><?php echo $select['surname']; ?></td><td><?php echo $select['other_names']; ?></td><td><?php echo $fetch['jamb_reg']; ?></td></tr>



<table border="0px" width="100%"><br  /><br />
<tr style="font-size:13px; font-weight:bold; text-transform: uppercase;"><td>Email</td><td>Phone No</td> <td>Date of Birth</td></tr>
<tr style="font-size:13px; text-transform:;"><td><?php echo ucfirst($select['email']); ?></td><td><?php echo $select['phone']; ?></td><td><?php echo $select['day_of_birth'].'-'.$select['month_of_birth'].'-'.$select['year_of_birth']; ?></td></tr>



<table border="0px" width="100%"><br  /><br />
<tr style="font-size:13px; font-weight:bold"><td>SUBJECTS</td><td>SCORE</td></tr>
<tr style="font-size:13px;"><td width="270px"><?php echo $fetch['subject1']; ?></td><td><?php echo $fetch['subject1_score']; ?></td></tr>
<tr style="font-size:13px;"><td width="270px"><?php echo $fetch['subject2']; ?></td><td><?php echo $fetch['subject2_score']; ?></td></tr>
<tr style="font-size:13px;"><td width="270px"><?php echo $fetch['subject3']; ?></td><td><?php echo $fetch['subject3_score']; ?></td></tr>
<tr style="font-size:13px;"><td width="270px"><?php echo $fetch['subject4']; ?></td><td><?php echo $fetch['subject4_score']; ?></td></tr>
<tr style="font-size:13px;"><td width="270px" style="border-top:2px solid grey;" ><b></b></td><td style="border-top:2px solid grey;"><b></b></td></tr>
<tr style="font-size:13px;"><td width="270px"><?php echo "Aggregate"; ?></td><td><?php echo $total ?></td></tr>


<table border="0px" width="100%"><br  /><br />
<tr style="font-size:13px; font-weight:bold"><td colspan="2">SCHOOL OF CHOICE</td></tr>
<tr style="font-size:13px;"><td width="160px"><b>SCHOOL</b></td><td colspan="2"><?php echo $select['school']; ?></td></tr>
<tr style="font-size:13px;"><td width="160px"><b>FACULTY</b></td><td><?php echo $select['faculty']; ?></td><td style="color:grey;">Examination Type: <b>CBT</b></td></tr>
<tr style="font-size:13px;"><td width="160px"><b>COURSE</b></td><td colspan="2"><?php echo $select['course']; ?></td></tr>


<table border="0px" width="100%"><br  /><br />
<tr style="font-size:12px;"><td width="10px" style="padding:10px; border-top:2px solid grey; border-bottom:2px solid grey; color: red;"><b>NOTE: </b></td><td style="padding:5px; font-size:11px; border-top:2px solid grey; border-bottom:2px solid grey; color: red;"><?php echo $message; ?></b></td></tr>


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


