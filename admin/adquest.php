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
table{border-collapse:collapse; color:black; }
table tr td{padding:5px;}
table tr.ntr{background-color:#000000; color:white;}


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
			<li class="first"><a style="font-size:15px; color:red;" href="admin.php" title=""><----Back</a></li>
				</ul>
	</div>
	<div id="ad468x60"><a href="#"><img src="images/ad468x60.jpg" alt="" width="468" height="60" /></a></div>
</div>
<div id="page">
	<div id="content">
		<div class="boxed" style="font-size:20px;">
			<h1 class="heading" style="font-size:18px;">Welcome...You are....<span style="color:red;"><?php echo $admin; ?></span>
			
			</h1>
			
			
			
			<div style="margin:auto;width:95%;height:auto;box-shadow:3px 3px 3px 5px #CCCCCC;text-align:left;  margin-top:10px;">

<div style="padding:10px; font-size:11px; ">

<?php
$sqdel = mysqli_query($con,"SELECT * FROM mst_question order by que_id desc");
 $nrow = mysqli_num_rows($sqdel);
 echo '<table border="1" width="100%">
<tr class="ntr" align="center"><td colspan="7"><b style="font-family:tahoma">QUESTIONS IN THE DATABASE</b></td></tr>
<tr class="ntr" align="center"><th rowspan="2">Questions</th><th colspan="5">Options</th><th>Setting</th></tr>
<tr class="ntr" align="center"><th>A</th><th>B</th><th>C</th><th>D</th><th>Answer</th><th>Action</th></tr>';

while($rowdel=mysqli_fetch_array($sqdel)){
$q_idt = $rowdel['que_id'];
$qst = $rowdel['que_desc'];
$ans1 = $rowdel['ans1'];
$ans2 = $rowdel['ans2'];
$ans3 = $rowdel['ans3'];
$ans4 = $rowdel['ans4'];
$ts = $rowdel['true_ans'];
if ($ts == 1){
$tr1 = 'A';
}elseif ($ts==2){
$tr1 = 'B';
}elseif ($ts==3){
$tr1 = 'C';
}else{
$tr1 = 'D';
}

echo '
<tr><td>'.$qst.'</td><td>'.$ans1.'</td><td>'.$ans2.'</td><td>'.$ans3.'</td><td>'.$ans4.'</td><td align="center">'.$tr1.'</td><td><a style="color:red" href="quedel.php?delid='. $q_idt.'">Del</a></td></tr>
';

}
echo '</table>';

?>



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
				You are...<span style="color:black; font-weight:bold;"><?php echo $admin; ?></span><br /><br />
				<div class="cbttest"><a style="color:#003399" href="questionadd.php">Set CBT Questions</a></div>
			
			</div>
		</div>
	</div>
	<!-- end #sidebar -->
</div>
<!-- end #page -->
<div style="clear: both;">&nbsp;</div>
<div id="footer">
	<p id="legal" style="font-size:16px;">Copyright &copy; <?php echo date ('Y');?> THE POLYTECHNIC, IBADAN Online PUTME Test.  .</p>
	<p id="links" style="font-size:16px;"><a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a></p>
</div>
</body>
</html>
