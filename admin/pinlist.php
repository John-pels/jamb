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
table tr td a{text-decoration:none; color:#0066FF;}
table tr td a:hover{text-decoration:underline; color:blue;}
table{color:black;}
.pr a{color:blue; text-decoration:none;}
.pr a:hover{text-decoration:underline; color:#000099;}
table tr th{background-color:black; color:white;}

.tot{widows:100$; height:auto; text-align:center; padding:2px; border:1px solid none; box-shadow:4px 6px 40px black; }
.now{font-size:70px; text-align:center; font-weight:bold;}

.tot1{widows:100$; height:auto; text-align:center; padding:2px; border:1px solid none; box-shadow:4px 6px 40px black; }
.now1{font-size:70px; text-align:center; font-weight:bold;}


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
			<li class="first"><a style="font-size:15px; color:blue;" href="admin.php" title=""><---Back</a></li>
				</ul>
	</div>
	<div id="ad468x60"><a href="#"><img src="images/ad468x60.jpg" alt="" width="468" height="60" /></a></div>
</div>
<div id="page">
	<div id="content">
		<div class="boxed" style="font-size:20px;">
			<h1 class="heading" style="font-size:18px;">Welcome...You are....<span style="color:red;"><?php echo $admin; ?></span></h1>
			
		
			
			
			
			<div class="pr" align="right"><a href="javascript:window.print()">Print Generated Pins</a></div>
			
			
<div style="margin:auto;width:90%;height:auto;box-shadow:3px 3px 3px 6px #CCCCCC;text-align:left; margin-top:10px; padding:10px;">
<span style="font-size:19px; color:black;">LIST OF <span style="color:RED;">UNUSED</span> REGISTRATION PINS <b>(For Sale)</b></span>

 <table style="text-align:center" border="1px" width="100%" cellpadding="5px" cellspacing="0px">
	 <tr class="tabler"><th>S/N</th><th>PIN</th><th>Status</th><th>Action</th></tr>
	 	<?php
	 	$sql=mysqli_query($con,"SELECT * FROM regpin WHERE status = 'unused'");
						$rol = mysqli_num_rows($sql);
						while($fetch=mysqli_fetch_assoc($sql))
					{
						?>
			<tr class="tableunused">
				<td><?php echo $fetch['id']; ?></td>
				<td><?php echo $fetch['pin']; ?></td>
				<td><?php echo $fetch['status']; ?></td>
				<td><a class="delbutton" wale="<?php echo $fetch['id']; ?>" href="javascript:void();" >Delete</a></td>

						<?php
					}

	 	?>
	 </tr>
	 </table>
       
     <br />
	 <span style="font-size:19px; color:black;">LIST OF <span style="color:blue;">USED</span> REGISTRATION PINS <b>(Already Sold)</b></span>
	 <table style="text-align:center" border="1px" width="100%" cellpadding="5px" cellspacing="0px">
	 <tr class="tabler"><th>S/N</th><th>PIN</th><th>Status</th><th>Action</th></tr>
	 	<?php
	 	$sql=mysqli_query($con,"SELECT * FROM regpin WHERE status = 'used'");
						$rol = mysqli_num_rows($sql);
						while($fetch=mysqli_fetch_assoc($sql))
					{
						?>
			<tr class="tabler1">
				<td><?php echo $fetch['id']; ?></td>
				<td><?php echo $fetch['pin']; ?></td>
				<td><?php echo $fetch['status']; ?></td>
				<td><a href="javascript:void();">Delete</a></td>

						<?php
					}

	 	?>
	 </tr>
	 </table>
	
       
     



</div>
 




		</div>
	</div>
	<!-- end #content -->
	<div id="sidebar">
		<div class="boxed">
			<h2 class="heading" style="font-size:15px;">ADMINISTRATIVE SECTION</h2>
			<div class="content" style="font-size:18px;">
				You are...<span style="color:black; font-weight:bold;"><?php echo $admin; ?></span>
				<BR /><BR />
					<div class="tot">
					<span style="font-size:20px; color:black; font-weight:bold; text-decoration:underline; ">Unused Pins</span>
					<div class="now"><?php  $sql=mysqli_query($con,"SELECT * FROM regpin WHERE status = 'unused'");
						echo $rol = mysqli_num_rows($sql);
						
						?></div></div>
					<BR /><BR />
						<div class="tot1">	<span style="font-size:20px; color:black; font-weight:bold; text-decoration:underline; ">Used Pins</span>
					<div class="now1"><?php  $sql=mysqli_query($con,"SELECT * FROM regpin WHERE status = 'used'");
						echo $rol = mysqli_num_rows($sql);
						
						?></div></div>
				
				
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
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/sweetalert.min.js"></script>
<script>
	$(".delbutton").click(function(){
		//Save the link in a variable called element
		var element = $(this).attr("wale");
		var info = 'ids='+element;
		//alert(info);
		//alert("#wale"+element);
		//Find the id of the link that was clicked
		/*var del_id = element.attr("id");
		alert(del_id);
		//Built a url to send
		var info = 'id=' + del_id;*/
		if (confirm("Are you sure you wanna delete this?")) {
			$.ajax({
				type: "GET",
				url: "delport.php",
				data: info,
				success: function(data){
					if (data=="deleted") {
						swal("Pin Deleted Successfully","","success");
					}
					else if (data=="notdeleted") {
						swal("Oops!!, Something Went Wrong","Error in deleting PIN, Please try again Later!!","warning");
					}
				}
			});
			$(this).parents(".tableunused").animate({ backgroundColor: "#fbc7c7" }, "fast")
		.animate({ opacity: "hide" }, "slow");
		}


		//alert("delete button clicked");
		return false;
	});
</script>

