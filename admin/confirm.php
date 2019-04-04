<?php
include('session.php');
include_once '../config.php';
?>

<!DOCTYPE html>

<?php
include('header.php');
?>
<html lang="en">
<link href="default.css" rel="stylesheet" type="text/css" />


<div id="header">
	<div id="logo">
		<h1><a href="#" style="font-family:impact; font-size:27px;">2015/2015 PUTME</a></h1>
		<h2><a href="#" style="font-size:10px;">THE POLYTECHNIC, IBADAN</a></h2>
	</div>

	<div id="menu">
		<ul>
			<li class="first"><a style="font-size:15px; color:red;" href="" title=""></a></li>
				</ul>
	</div>
	<div id="ad468x60"><a href="#"><img src="images/ad468x60.jpg" alt="" width="468" height="60" /></a></div>
</div>







<div class="container" style="width:730px;">

<br>
    
	<div class="row-fluid">
  <div class="span12">
  
  <div class="hero-unit1">
   <ul class="nav nav-tabs">
  <li class="">
    <a href="admin.php" style=" color:red;"><i class="icon-home"></i><---- Home</a>
  </li>
  
  
  
  <div class="pull-right">
  <div class="btn-group">
  <a class="btn btn-info dropdown-toggle" data-toggle="dropdown" href="#">
    
	You are: <?php echo $_SESSION['SESS_MEMBER_ADMIN']; ?>
&nbsp;<i class="icon-cog icon-large"></i>
    <span class="caret"></span>
  </a>

</div>
  </div>
</ul>
    

   
	
	
   
  
    <div class="row-fluid">
	
	
      <div class="span12">
	 
	  <div class="hero-unit-jam">
	  <div class="span10" style="width:680px;">
	    <p><div class="alert alert-info" "><h4>List of Registered Students</h4></div></p>
		</div>
		
	
 
			<table style=" font-size:12px" class="table table-hover table-stripped" id="example">
  
     </div>   
	 <br>
	 <br>
	 <br>
	
	
</form>
		<hr>		


  	
  <thead>
  
    <tr>
	<th>ID No</th>
      <th>Full Name</th>
      <th>Gender</th>
      <th>Jamb Number</th>
      <th>Photo</th>
      <th>Jamb Score</th>
	  <th>Online Status</th>
      <th>Status</th>
	  <th>Admssion Status</th>
      <th>Action</th>
    </tr>
	
  </thead>
  <tbody>
 
     <?php 
	$result= mysqli_query($con,"select * from studentreg")or die(mysql_error());
	while($row=mysqli_fetch_array($result)){
	$id=$row['id'];
	?>
	
	
    <tr>
	    <td><?php echo $row['id'];?></td>    
    <td><?php echo $row['surname'].' '.$row['othernames']; ?></td>
	   <td><?php echo $row['gender'];?></td><td><?php echo $row['jamb'];?></td>
<td><img class="img-rounded" src="../<?php echo $row['photo']; ?>" width="60" height="60"></td><td><?php echo $row['total'];?></td>
    <td><a href="#status<?php  echo $id;?>" data-toggle="modal"><?php echo $row['time']; ?></a></td>
  
	<td><?php echo $row['status'];?></td>
	<td><?php echo $row['examdate'];?></td>
	
	
	<td width = "100">
	<a href="#delete_course<?php echo $id; ?>" data-toggle="modal" class="btn btn-danger"><i class="icon-trash icon-large"></i>&nbsp; Delete</a>
	
	  
										<?php include('delete_course_modal.php'); ?>
  
	</td>
	
	
	   <!--- modal -->
	   <center>
<div id="status<?php  echo $id;?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-header">
<legend>Enable / Disable to take Online Exam</legend>
</div>
<div class="modal-body">


									<form class="form-horizontal" method="post" action="sup.php"  enctype="multipart/form-data">
									
								<input type="hidden" value="<?php echo $row['id']; ?>"  name="UserID" id="inputEmail"  placeholder="Username" required>

									<div class="control-group">
                                    <label class="control-label" for="input01">Status:</label>
                                    <div class="controls">
									<select class="span5" type="text" name="Status" >
											<option> </option>
											<option>active</option>
											<option>inactive</option>
											<option>re-register</option>
										 </select>

                                    </div>
                                    </div>
								
</div>

<div class="modal-footer">
<button type="submit" name="update_status" class="btn btn-success"><i class="icon-save"></i>&nbsp;Save</button>
<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i> Close</button>
</div>
</div>

									
										</form>
</center>

   <!--- modal -->
	
	
	
	<!-- Modal -->
<div id="<?php  echo $id?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-header">
</div>
<div class="modal-body">
<p><div class="alert alert-danger">Are you Sure you want Delete </p>
</div>
<hr>
<div class="modal-footer">
<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i> No</button>
<a href="delete_user.php<?php echo '?User_ID='.$id; ?>" class="btn btn-danger"><i class="icon-ok icon-large"></i> Yes</a>
</div>
</div>
   <!--- modal -->

	
	
	
		<?php } ?>
    </tr>
  </tbody>
</table>
</center>
	

  
	  </div>
	 
	  
	  
	  </div>
	  
	  
     
    </div>
	 </div>
	<?php
include('footer.php');
?>
  </div>
  
  
</div>


 <!-- end #page -->
<div style="clear: both;">&nbsp;</div>
<div id="footer">
	<p id="legal" style="font-size:16px;">Copyright &copy; <?php echo date ('Y');?> THE POLYTECHNIC, IBADAN Online PUTME Test.</p>
	<p id="links" style="font-size:16px;"><a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a></p>
</div>
</body>
</html>

    


    
    
  </body>
</html>
