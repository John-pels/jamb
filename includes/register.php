<?php 	
include 'includes/config.php';
 ?>

 <?php 	

if (isset($_POST['submit'])) {
		$surname = $_POST['surname'];
		$othernames = $_POST['othernames'];
		$address = $_POST['address'];
		$phone = $_POST['phone'];
		$email = $_POST['email'];
		$gender = $_POST['gender'];
			$religion = $_POST['religion'];
			$state = $_POST['state'];
			$lga = $_POST['lga'];
			$country = $_POST['country'];
			$month = $_POST['month'];
			$day = $_POST['day'];
			$year = $_POST['year'];
					$school = $_POST['school'];
					$faculty = $_POST['faculty'];
					$course = $_POST['course'];
					$level = $_POST['level'];
					$jamb = $_POST['jamb'];
					$subject1 = $_POST['subject1'];
						$grade1 = $_POST['grade1'];
						$subject2 = $_POST['subject2'];
						$grade2 = $_POST['grade2'];
						$subject3 = $_POST['subject3'];
						$grade3 = $_POST['grade3'];
						$subject4 = $_POST['subject4'];
	$grade4 = $_POST['grade3'];
	$filename=$_FILES['passport']['tmp_name'];
			  $file=$_FILES['passport']['name'];
			  $me=$filename.$file;
			  $filedir="image/";
  $joinfile=$filedir.$file;
  $save=move_uploaded_file($filename, $joinfile);

  			if ((empty($surname)) || (empty($othernames)) || (empty($address)) || (empty($phone)) || (empty($email)) || (empty($gender)) || (empty($religion)) || (empty($state)) || (empty($lga)) || (empty($country)) || (empty($month)) || (empty($day)) || (empty($year)) || (empty($school)) || (empty($faculty)) || (empty($course)) || (empty($level)) || (empty($jamb)) || (empty($subject1)) || (empty($grade1)) || (empty($subject2)) || (empty($grade2)) || (empty($subject3)) || (empty($grade3)) || (empty($subject4)) || (empty($grade4)))
  			 {


  			 			echo '<script>alert("All Fields sre required!");
  						window.location = "./signup.php";
  						</script>';
  					}
  					else {


	$insert = mysqli_query($con," INSERT INTO register (surname,other_names,address,phone,email,gender,religion,state,lga,country,month_of_birth,day_of_birth,year_of_birth,school,faculty,course,sec_school,jamb_reg,subject1,grade1,subject2,grade2,subject3,grade3,subject4,grade4,passport) VALUES ('$surname','$othernames','$address','$phone','$email','$gender','$religion','$state','$lga','$country','$month','$day','$year','$school','$faculty','$course','$level','$jamb','$subject1','$grade1','$subject2','$grade2','$subject3','$grade3','$subject4','$grade4','$joinfile')");

  					if ($insert && $save) {
  						$queryjamb = mysqli_query($con,"UPDATE regno SET status = 'USED' WHERE regno = '$jamb'");
  						echo '<script>alert("Record Registered Successfully!");
  						window.location = "./index.php";
  						</script>';
  					}

  					else if (!$save) {
  							echo '<script>alert("Error in Uploading Picture!");
  						window.location = "./signup.php";
  						</script>';
  				}
  				else {
  					echo '<script>alert("Error in Registration!");
  						window.location = "./signup.php";
  						</script>';
  				}


  		}
  				
}
  ?>