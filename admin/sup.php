<?php
require '../config.php';
										 if (isset($_POST['update_status'])) {
					
									$Status_save = $_POST['Status'];
									$UserID = $_POST['UserID'];
																		
									mysqli_query($con,"UPDATE studentreg SET time='$Status_save'
									WHERE id = '$UserID'")
													or die(mysqli_error()); 
									header("Location:confirm.php");		
								
								}
									?>