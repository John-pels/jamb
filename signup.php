<?php
include 'includes/register.php';  
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Student Registration Portal</title>
<meta charset="utf-8">
 <link rel="shortcut icon"  href="Images/bg_img.png">
<link rel="stylesheet" href="css1/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css1/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css1/style.css" type="text/css" media="all">
<style type="text/css">
table tr td{border-top:1px dashed blue; border-bottom:1px dashed #999999; padding:10px; color:black; font-size:18px;}
input{width:360px; border:1px solid #CCCCCC; padding:4px; height:20px;}
input:hover{width:360px; border:1px solid #0066FF; padding:4px; height:20px; box-shadow:1px 1px 14px red;}
select{width:130px; border:1px solid #CCCCCC; padding:4px; height:35px;}
.loc select{width:170px; border:1px solid #CCCCCC; padding:4px; height:35px;}
.loc1 select{width:120px;}
.loc2 select{width:73px;}
.loca select{width:250px;}
.loca1 select{width:80px;}
.subm input:hover{ box-shadow:none;}

</style>

<!--[if lt IE 9]>
<script type="text/javascript" src="js/ie6_script_other.js"></script>
<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
</head>
<body id="page1">
<!-- START PAGE SOURCE -->
<div class="body3"></div>
<div class="body1">
  <div class="main">
    <header>
      <div id="logo_box">
        <h1><a href="#" id="logo"><img src="images/banner.png"></span></a></h1>
      </div>
      <nav>
        <ul id="menu">
          <li id="menu_active"><a href="../logout.php">Home</a></li>
        </ul>
      </nav>
      <div class="wrapper">
        <div class="text1">JOINT ADMISSIONS AND MATRICULATION BOARD (JAMB)</div>
        <div class="text2" style="text-align: center;">2018/2019 UTME ADMISSION</div>
       
      </div>
    </header>
  </div>
</div>
<div class="body2">
  <div class="main">
    <section id="content">
      <div class="marg_top wrapper">
       
       
      </div>
      <div class="wrapper marg_top2" style="background-image: url(images/4.jpg); background-size: cover;">
 
        <article class="col2 pad_left1" >
          <div class="pad">
            <h2>Student Registration</h2>
           <div style="font-size:20px;">
           <form action="" method="post" enctype="multipart/form-data">
           <table border="1px" width="100%">
           <tr><td colspan="2" style="background-color:#E8E8E8"><b>Student Bio Data</b></td></tr>
           <tr><td width="150px">Surname</td><td><input type="text" name="surname" placeholder="Your Surname" required></td></tr>
           <tr><td>Other Names</td><td><input type="text" name="othernames" placeholder="Your Othernames" required></td></tr>
           <tr><td width="150px">Address</td><td><input type="text" name="address" placeholder="Your Address" required></td></tr>
           <tr><td>Phone</td><td><input type="text" name="phone" placeholder="Your Phone Number" onclick="return this.value='+234'" required></td></tr>
           <tr><td>E-mail</td><td><input type="email" id="email" name="email" placeholder="Your E-mail"  required></td><td></td></tr>
           <td></td><td id="check_email"></td>
            <table border="1px" width="100%">
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td width="10px">
    <select name="gender" required><option selected="selected" >Gender...</option>
 <?php   

                  $query = mysqli_query($con,"SELECT * FROM gender");
                      $rows = mysqli_num_rows($query);
                          while ($fetch = mysqli_fetch_array($query)) {
                        ?>
                        
           <option value="<?php echo $fetch['gender']?>"> <?php echo $fetch['gender']?></option>
           <?php
                            }
             ?>
        </select></td><td>
           
           <select name="religion"><option selected="selected" required>Religion...</option>
           <option  value="Christian">Christian</option>
           <option value="Muslim">Muslim</option></select> </td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
    
    
    
    <select name="state" required><option selected="selected" >State...</option>
            <?php   

                  $query = mysqli_query($con,"SELECT * FROM state");
                      $rows = mysqli_num_rows($query);
                          while ($fetch = mysqli_fetch_array($query)) {
                        ?>
                        
           <option value="<?php echo $fetch['state']?>"> <?php echo $fetch['state']?></option>
           <?php
                            }
             ?>
                                                                                               
           </select></td><td>
        <div class="loc">   
           <select name="lga" required=""><option selected="selected"required>Local Government...</option>
           <option  value="Akure South Local Government">Akure South Local Government</option>
           <option value="Akure North Local Government">Akure North Local Government</option></select> </td></tr>
    </div>
    
    
    </td></tr>
    
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
    
    <div class="loc1">
           <select name="country" required="">
           <option  value="Nigeria" selected>Nigeria</option>
           
    </div>
    
           </td><td>
           
           
    <select name="month" required style="width:75px; font-size:13px; height:32px; padding:3px"><option value="month:">Month:</option><script type="text/javascript">
          var m = new Array("", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
          for (i = 1; i<=m.length-1; i++){
              document.write("<option value='"+i+"'>"+m[i]+"</option>");
          }
          </script></select>
          
          
          <select name="day"required style="width:60px; font-size:13px; height:32px; padding:3px" required=""><option value="day:">Day:</option><script type="text/javascript">
           for (i = 1; i<=31; i++){
              document.write("<option value='"+i+"'>"+i+"</option>");
          }
          </script></select>
          <span class="loc2">
          <select name="year" required style=" font-size:13px; height:32px; padding:3px"><option value="year:">Year:</option><script type="text/javascript">
           for (i = 2015; i>=1910; i--){
              document.write("<option value='"+i+"'>"+i+"</option>");
          }
          </script></select>
    </span>
           
       </td></tr>
    
    
     <table border="1px" width="100%">
           <tr><td colspan="2" style="background-color:#E8E8E8"><b>Course/Institution of Choice</b></td></tr>
           <tr><td width="150px">School</td><td>
           <select name="school">
           <?php   

                  $query = mysqli_query($con,"SELECT * FROM school");
                      $rows = mysqli_num_rows($query);
                          while ($fetch = mysqli_fetch_array($query)) {
                        ?>
                        
           <option value="<?php echo $fetch['school']?>"> <?php echo $fetch['school']?></option>
           <?php
                            }
             ?></select>
           </td></tr>
           <tr><td>Faculty</td><td>
           <select name="faculty" style="width: 300px;" required>
            <?php   

                  $query = mysqli_query($con,"SELECT * FROM faculty");
                      $rows = mysqli_num_rows($query);
                          while ($fetch = mysqli_fetch_array($query)) {
                        ?>
                        
           <option value="<?php echo $fetch['faculty']?>"> <?php echo $fetch['faculty']?></option>
           <?php
                            }
             ?>
                   </select>
           </td></tr>
           <tr><td width="150px">Course</td><td>
           <select name="course" style="width: 300px;" required>
           <?php   

                  $query = mysqli_query($con,"SELECT * FROM course");
                      $rows = mysqli_num_rows($query);
                          while ($fetch = mysqli_fetch_array($query)) {
                        ?>
                        
           <option value="<?php echo $fetch['course']?>"> <?php echo $fetch['course']?></option>
           <?php
                            }
             ?>
                   </select>
          </td></tr>
           
    <?php
    $queryjamb = mysqli_query($con,"SELECT * FROM regno WHERE  status = 'UNUSED' LIMIT 1");
    $count = mysqli_num_rows($queryjamb);
    $fetchjamb = mysqli_fetch_array($queryjamb);
    ?>
    <table border="1px" width="100%">
           <tr><td colspan="3" style="background-color:#E8E8E8"><b>Jamb (UTM) Details</b></td></tr>
           <tr><td width="150px">Secondary School Class</td><td colspan="2">
           <select name="level"><option selected="selected" required>Sec Class...</option>
           <option  value="Science Class">Science Class</option>
            <option  value="Commercial Class">Commercial Class</option>
             <option  value="Art Class">Art Class</option>
           </select>
           </td></tr>
           <td>Jamb Reg. Number</td><td colspan="2"><input type="text" id="jamb" name="jamb" placeholder="Your Jamb Number" value="<?php echo $fetchjamb['regno']; ?>" readonly></td></tr>
           <td></td><td id="check_jamb"></td>
           <tr><td rowspan="4"><br><br><br><br>Jamb Subjects</td><td>
           <div class="loca">
           <select name="subject1">
          

                  
           <option value="Use of English " selected>Use of English </option>
           
          
           
                   </select></div>
           </td><td> 
           <div class="loca1">
           <select name="grade1" required style="width:90px; font-size:13px; height:32px; padding:3px"><<?php   

                  $query = mysqli_query($con,"SELECT * FROM grade");
                      $rows = mysqli_num_rows($query);
                          while ($fetch = mysqli_fetch_array($query)) {
                        ?>
                        
           <option value="<?php echo $fetch['grade']?>"> <?php echo $fetch['grade']?></option>
           <?php
                            }
             ?></select></div></td></tr>
           
           <tr><td>
           <div class="loca">
            <select name="subject2"><option selected="selected"  required>Subjects...</option>
             <?php   

                  $query = mysqli_query($con,"SELECT * FROM subjects");
                      $rows = mysqli_num_rows($query);
                          while ($fetch = mysqli_fetch_array($query)) {
                        ?>
                        
           <option value="<?php echo $fetch['subjects']?>"> <?php echo $fetch['subjects']?></option>
           <?php
                            }
             ?>
          
           
                   </select></div>
          </td><td>   <div class="loca1"><select name="grade2" required style="width:90px; font-size:13px; height:32px; padding:3px"><?php   

                  $query = mysqli_query($con,"SELECT * FROM grade");
                      $rows = mysqli_num_rows($query);
                          while ($fetch = mysqli_fetch_array($query)) {
                        ?>
                        
           <option value="<?php echo $fetch['grade']?>"> <?php echo $fetch['grade']?></option>
           <?php
                            }
             ?></select></div></td></tr>
           
           <tr><td>
           <div class="loca">
            <select name="subject3"><option selected="selected" required>Subjects...</option>
            <?php   

                  $query = mysqli_query($con,"SELECT * FROM subjects");
                      $rows = mysqli_num_rows($query);
                          while ($fetch = mysqli_fetch_array($query)) {
                        ?>
                        
           <option value="<?php echo $fetch['subjects']?>"> <?php echo $fetch['subjects']?></option>
           <?php
                            }
             ?>
                   </select></div>
          </td><td><div class="loca1"><select name="grade3" required style="width:90px; font-size:13px; height:32px; padding:3px"><?php   

                  $query = mysqli_query($con,"SELECT * FROM grade");
                      $rows = mysqli_num_rows($query);
                          while ($fetch = mysqli_fetch_array($query)) {
                        ?>
                        
           <option value="<?php echo $fetch['grade']?>"> <?php echo $fetch['grade']?></option>
           <?php
                            }
             ?></select></div></td></tr>
           <tr><td>
           <div class="loca">
            <select name="subject4"><option selected="selected" required>Subjects...</option>
           <?php   

                  $query = mysqli_query($con,"SELECT * FROM subjects");
                      $rows = mysqli_num_rows($query);
                          while ($fetch = mysqli_fetch_array($query)) {
                        ?>
                        
           <option value="<?php echo $fetch['subjects']?>"> <?php echo $fetch['subjects']?></option>
           <?php
                            }
             ?>
                   </select></div>
          </td><td><div class="loca1"><select name="grade4" required style="width:90px; font-size:13px; height:32px; padding:3px">
            <?php   

                  $query = mysqli_query($con,"SELECT * FROM grade");
                      $rows = mysqli_num_rows($query);
                          while ($fetch = mysqli_fetch_array($query)) {
                        ?>
                        
           <option value="<?php echo $fetch['grade']?>"> <?php echo $fetch['grade']?></option>
           <?php
                            }
             ?></select></div></td></tr>
             <tr><td>Passport</td><td colspan="2" style=" color: #ff0000; margin-bottom: : 10px;"><input type="file" id="Passport" name="passport" required>Picture should not be more than 100Kb.</td></tr>
           <td></td><td id="passport" ></td>
          
          <tr><td>--></td><td colspan="3"><div class="subm"><input type="submit" style="height:50px; cursor: pointer;" name="submit" value="Proceed"></div></td>
           
    
    
           
           </table>
           </form>
            
       
       </div>
          </div>
        </article>
      </div>
    </section>
  </div>
</div>
<div class="main">
  <footer>
    <div class="wrapper">
      
      <article class="col2 pad_left1">
        <div class="pad">
          <div class="wrapper">
            
            
          </div>
        </div>
      </article>
    </div>
    <div class="under2"></div>
    <div class="footerlink">
      <p class="lf" style="font-size:15px; text-align: center;">Copyright &copy; <?php echo date('Y'); ?> <a href="#">JOINT ADMISSIONS AND MATRICULATION BOARD (JAMB)</a> - All Rights Reserved</p>
 
    </div>
  </footer>
</div>
</body>
</html>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/checkscript.js"></script>
<script>
    //$(document).ready(function(){

//});
</script>