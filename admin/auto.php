<?php
require '../config.php';
$roller = $_GET['idpin'];
if ($roller=="pin"){
//$cont = "POLYIBADAN2019";
//$status = "unused";
//ini_set(max_timeout, 500);
//(int) $i;
while ($i<20){
$pin = 'POLYIBADAN2019'.mt_rand(10000000,99999999);
$query = mysqli_query($con,"INSERT INTO regpin (pin, status) VALUES ('$pin', 'unused')");
$i++;
}
if ($query) {
	echo '<script type="text/javascript">
alert("20 PINS have successfully been generated");
window.location="admin.php";
</script>';
}
else{
	echo '<script type="text/javascript">
alert("Erro in generating pin");
window.location="admin.php";
</script>';
}

}
?>


