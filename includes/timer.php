<?php
//session_start();

//require_once 'config.php';
$se = mysqli_query ($con,"SELECT * FROM timer WHERE student_id = '$takeexam'");
$rowse = mysqli_fetch_assoc($se);
$_SESSION['timerstudentid'] = $rowse['student_id'];
			echo '<span style="font-size:18px"><i>Your Started Time is:</i> </span><b>'. $tim = $rowse['timer'].'</b>';		
		//Real Date
		$start=$tim;
	
		//No of Minute To Use
		$expectedtime=60;
		
		//Current Date
		$date=date('H:i:s',mktime());
		
			
			sscanf($start,"%d:%d:%d",$hs,$ms,$ss);
			sscanf($date,"%d:%d:%d",$hc,$mc,$sc);
			
			$start=isset($ms)?$hs*3600+$ms*60+$ss:$hs*60+$ms;
			$now=isset($mc)?$hc*3600+$mc*60+$sc:$hc*60+$mc;
			
			$expectedtime=($expectedtime*60)+0;
			 
			$used=$now-$start;
			//echo $start.'<br>'.$used.'<br>'.$now.'<br>'.$expectedtime;	
				echo "
				<input type='hidden' value='$used' id='hiddentimeused'>
				<input type='hidden' value='$expectedtime' id='hiddentimetouse'>";
				
?>

<script src="js/jquery-1.8.3.min.js"></script>


<script>
$(function(){
	$('#feedback2').ready(function(event){
				
				
			var used=$('#hiddentimeused').val(),
			 expected=$('#hiddentimetouse').val();			
				var timer=function(){
					
					used++;	
					var hour=parseInt(used/3600),
					minute=parseInt(used/60);
					
					var sec=parseInt((used)%60);
		
					if(minute>59){
						minute-=60;					
					}
					
					if(parseInt(used)>(expected/2) && parseInt(used)<(expected-60)){
						$('#feedback2').css({color:'rgba(69, 69, 255, 0.77)'});					
					}
					
					if((expected-used)<61){
						$('#feedback2').css({color:'red'});
					}
					
					if(parseInt(used)>parseInt(expected)){
						clearInterval(int);
						alert("Your Time has Elapsed");
						window.location='close.php';
					}
					
					$('#feedback2').html(hour+' : '+minute+' : '+sec);
						//timer();
						//console.log(used);
				}
			
		if(parseInt(used)<parseInt(expected)){	
			timer;
			var int=setInterval(timer,1000);
		}else{
			console.log(used);
			}

	});
});	

</script>
<style type="text/css">
#feedback2{font-size:39px; font-family:tahoma;}

</style>
<html>
<body>
<div id="feedback2">


</div>

</body>

</html>