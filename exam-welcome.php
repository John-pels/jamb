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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Examination (CBT Test)</title>
<link rel="stylesheet" href="styselect.css" />
<style type="text/css">
table a{font-family:tahoma; font-size:20px; text-decoration:none; color:white;}
table a:hover{text-decoration:underline; color:#999;}
#aa a{text-decoration:none;}
#aa a:hover{text-decoration:underline;}
</style>
</head>
<body>
<div id="header">
<br /><br /><br />

<div class="hd" style="color:black; font-size:50px; font-family:'Palatino Linotype', 'Book Antiqua', Palatino, serif; font-weight:bold; line-height:40px; margin-top:-53px;" ><img src="Images/banner.png"><BR /><span style="font-family:tahoma; font-size:30px; color: #333333">Online Entrance Examination (CBT)</span><hr /></div>



<fieldset style="border:1px solid #999999; width:50%; margin:auto; font-size:21px;"><legend><b>Candidate's (Student) Information</b></legend>
             
<span style="font-family:tahoma; text-transform:uppercase; font-size:18px; color:grey">Welcome <b style="color:black"><?php echo $fetch['surname']; ?> <?php echo $fetch['other_names']; ?></span><br />
</b>
<span style="font-family:tahoma; text-transform:uppercase; font-size:18px; color:grey">Secondary School Level:  <b style="color:black"><?php echo $fetch['sec_school']; ?></span><br />

</b>
<span style="font-family:tahoma; text-transform:; font-size:18px; color:grey">COURSE OF STUDY:  <b style="color:black"><?php echo $fetch['course']; ?></span><br />

</b>
<span style="font-family:tahoma; text-transform:uppercase; font-size:18px; color:grey">REGISTRATION NO:  <b style="color:black"><?php echo $fetch['jamb_reg']; ?></span><br />

</b>
<span style="font-family:tahoma; text-transform:;  font-size:18px; color:grey">Student Email:  <b style="color:black; font-style: italic;"><?php echo $fetch['email']; ?></span><br />

</b>


</fieldset>
<span id="aa"><a style="font-size:20px;" href="logout.php"><span style="color:red">Logout</span></span></a>
					
                    
				
				<br /><br />
                
					<nav id="nav" >
						<div  style="background-color:; width:900px; margin:auto; height:auto; color:; border-radius:10px 10px 0px 0px; font-size:20px">
                   <br>
                   
                      
			
<table width="53%" cellpadding="5px"  border="0" style="border-color:white" align="center">
<tr><td rowspan="2"><img style="width: 180px; height: 150px; border-radius: 100%;" alt="Your name" src="<?php echo $fetch['passport']; ?>"></td><td width="7%" height="65" valign="bottom"><img style="border-radius: 100px;" src="Images/HLPBUTT2.JPG" width="50" height="50" align="middle"></td>
<td width="93%" valign="bottom" bordercolor="#0000FF"> <a href="sublist.php" class="style4" style="text-decoration: none; color: black;">Proceed &raquo;</a></td> </tr>
<tr><td height="58" valign="bottom"><img style="border-radius: 100px;" src="Images/DEGREE.JPG" width="43" height="43" align="absmiddle"></td>    <td valign="bottom"> <a href="result.php" class="style4" style="text-decoration: none; color: black;">Result </a></td>
  </tr>
</table>



	
<br />

                        </div>
					</nav>

			
</div>


<br /><br />
			<div class="container">
				<b>Designed By:</b> Pels-Tech &copy;
			</div>
		<br /><br />
</body>
</html>
