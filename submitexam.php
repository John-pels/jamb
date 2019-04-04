<?php
session_start();
error_reporting(1);
include 'includes/config.php';


$takeexam = $_SESSION['takeexam'];
if (!isset($takeexam)) {
	header("Location:index.php");
}


$queryslip = mysqli_query($con,"SELECT * FROM register WHERE id = '$takeexam'");
$fetch = mysqli_fetch_array($queryslip);
$subject1 = $fetch['subject1'];
$subject2 = $fetch['subject2'];
$subject3 = $fetch['subject3'];
$subject4 = $fetch['subject4'];
$jambreg = $fetch['jamb_reg'];



if (isset($_POST['btnsubmitexam'])) {
	$option1 = $_POST['subj190'];
	$option2 = $_POST['subj191'];
	$option3 = $_POST['subj192'];
	$option4 = $_POST['subj193'];
	$option5 = $_POST['subj194'];
	$option6 = $_POST['subj195'];
	$option7 = $_POST['subj196'];
	$option8 = $_POST['subj197'];
	$option9 = $_POST['subj198'];
	$option10 = $_POST['subj199'];
	$option11 = $_POST['subj200'];
	$option12 = $_POST['subj201'];
	$option13 = $_POST['subj202'];
	$option14 = $_POST['subj203'];
	$option15 = $_POST['subj204'];
	$option16 = $_POST['subj205'];
	$option17 = $_POST['subj206'];
	$option18 = $_POST['subj207'];
	$option19 = $_POST['subj208'];
	$option20 = $_POST['subj209'];

	$option21 = $_POST['subj210'];
	$option22 = $_POST['subj211'];
	$option23 = $_POST['subj212'];
	$option24 = $_POST['subj213'];
	$option25 = $_POST['subj214'];
	$option26 = $_POST['subj215'];
	$option27 = $_POST['subj216'];
	$option28 = $_POST['subj217'];
	$option29 = $_POST['subj218'];
	$option30 = $_POST['subj219'];

	$option31 = $_POST['subj220'];
	$option32 = $_POST['subj221'];
	$option33 = $_POST['subj222'];
	$option34 = $_POST['subj223'];
	$option35 = $_POST['subj224'];
	$option36 = $_POST['subj225'];
	$option37 = $_POST['subj226'];
	$option38 = $_POST['subj227'];
	$option39 = $_POST['subj228'];
	$option40 = $_POST['subj229'];

	$option41 = $_POST['subj230'];
	$option42 = $_POST['subj231'];
	$option43 = $_POST['subj232'];
	$option44 = $_POST['subj233'];
	$option45 = $_POST['subj234'];
	$option46 = $_POST['subj235'];
	$option47 = $_POST['subj236'];
	$option48 = $_POST['subj237'];
	$option49 = $_POST['subj238'];
	$option50 = $_POST['subj239'];

	$option51 = $_POST['subj240'];
	$option52 = $_POST['subj241'];
	$option53 = $_POST['subj242'];
	$option54 = $_POST['subj243'];
	$option55 = $_POST['subj244'];
	$option56 = $_POST['subj245'];
	$option57 = $_POST['subj246'];
	$option58 = $_POST['subj247'];
	$option59 = $_POST['subj248'];
	$option60 = $_POST['subj249'];

	$option61 = $_POST['subj250'];
	$option62 = $_POST['subj251'];
	$option63 = $_POST['subj252'];
	$option64 = $_POST['subj253'];
	$option65 = $_POST['subj254'];
	$option66 = $_POST['subj255'];
	$option67 = $_POST['subj256'];
	$option68 = $_POST['subj257'];
	$option69 = $_POST['subj258'];
	$option70 = $_POST['subj259'];

	$option71 = $_POST['subj260'];
	$option72 = $_POST['subj261'];
	$option73 = $_POST['subj262'];
	$option74 = $_POST['subj263'];
	$option75 = $_POST['subj264'];
	$option76 = $_POST['subj265'];
	$option77 = $_POST['subj266'];
	$option78 = $_POST['subj267'];
	$option79 = $_POST['subj268'];
	$option80 = $_POST['subj269'];

	$option81 = $_POST['subj270'];
	$option82 = $_POST['subj271'];
	$option83 = $_POST['subj272'];
	$option84 = $_POST['subj273'];
	$option85 = $_POST['subj274'];
	$option86 = $_POST['subj275'];
	$option87 = $_POST['subj276'];
	$option88 = $_POST['subj277'];
	$option89 = $_POST['subj278'];
	$option90 = $_POST['subj279'];

	$option91 = $_POST['subj280'];
	$option92 = $_POST['subj281'];
	$option93 = $_POST['subj282'];
	$option94 = $_POST['subj283'];
	$option95 = $_POST['subj284'];
	$option96 = $_POST['subj285'];
	$option97 = $_POST['subj286'];
	$option98 = $_POST['subj287'];
	$option99 = $_POST['subj288'];
	$option100 = $_POST['subj289'];

	$option101 = $_POST['subj290'];
	$option102= $_POST['subj291'];
	

//for english
	$qu1 = $_POST['190'];
	$qu2 = $_POST['191'];
	$qu3 = $_POST['192'];
	$qu4 = $_POST['193'];
	$qu5 = $_POST['194'];
	$qu6 = $_POST['195'];
	$qu7 = $_POST['196'];
	$qu8 = $_POST['197'];
	$qu9 = $_POST['198'];
	$qu10 = $_POST['199'];

	$qu11 = $_POST['200'];
	$qu12 = $_POST['201'];
	$qu13 = $_POST['202'];
	$qu14 = $_POST['203'];
	$qu15 = $_POST['204'];
	$qu16 = $_POST['205'];
	$qu17 = $_POST['206'];
	$qu18 = $_POST['207'];
	$qu19 = $_POST['208'];
	$qu20 = $_POST['209'];

	$qu21 = $_POST['210'];
	$qu22 = $_POST['211'];
	$qu23 = $_POST['212'];
	$qu24 = $_POST['213'];
	$qu25 = $_POST['214'];
	$qu26 = $_POST['215'];
	$qu27 = $_POST['216'];
	$qu28 = $_POST['217'];
	$qu29 = $_POST['218'];
	$qu30 = $_POST['219'];

	$qu31 = $_POST['220'];
	$qu32 = $_POST['221'];
	$qu33 = $_POST['222'];
	$qu34 = $_POST['223'];
	$qu35 = $_POST['224'];
	$qu36 = $_POST['225'];
	$qu37 = $_POST['226'];
	$qu38 = $_POST['227'];
	$qu39 = $_POST['228'];
	$qu40 = $_POST['229'];

	$qu41 = $_POST['230'];
	$qu42 = $_POST['231'];
	$qu43 = $_POST['232'];
	$qu44 = $_POST['233'];
	$qu45 = $_POST['234'];
	$qu46 = $_POST['235'];
	$qu47 = $_POST['236'];
	$qu48 = $_POST['237'];
	$qu49 = $_POST['238'];
	$qu50 = $_POST['239'];
	$qu51 = $_POST['240'];
	$qu52 = $_POST['241'];
	$qu53 = $_POST['242'];
	$qu54 = $_POST['243'];
	$qu55 = $_POST['244'];
	$qu56 = $_POST['245'];
	$qu57 = $_POST['246'];
	$qu58 = $_POST['247'];
	$qu59 = $_POST['248'];
	$qu60 = $_POST['249'];

	$qu61 = $_POST['250'];
	$qu62 = $_POST['251'];
	$qu63 = $_POST['252'];
	$qu64 = $_POST['253'];
	$qu65 = $_POST['254'];
	$qu66 = $_POST['255'];
	$qu67 = $_POST['256'];
	$qu68 = $_POST['257'];
	$qu69 = $_POST['258'];
	$qu70 = $_POST['259'];

	$qu71 = $_POST['260'];
	$qu72 = $_POST['261'];
	$qu73 = $_POST['262'];
	$qu74 = $_POST['263'];
	$qu75 = $_POST['264'];
	$qu76 = $_POST['265'];
	$qu77 = $_POST['266'];
	$qu78 = $_POST['267'];
	$qu79 = $_POST['268'];
	$qu80 = $_POST['269'];

	$qu81 = $_POST['270'];
	$qu82 = $_POST['271'];
	$qu83 = $_POST['272'];
	$qu84 = $_POST['273'];
	$qu85 = $_POST['274'];
	$qu86 = $_POST['275'];
	$qu87 = $_POST['276'];
	$qu88 = $_POST['277'];
	$qu89 = $_POST['278'];
	$qu90 = $_POST['279'];

	$qu91 = $_POST['280'];
	$qu92 = $_POST['281'];
	$qu93 = $_POST['282'];
	$qu94 = $_POST['283'];
	$qu95 = $_POST['284'];
	$qu96 = $_POST['285'];
	$qu97 = $_POST['286'];
	$qu98 = $_POST['287'];
	$qu99 = $_POST['288'];
	$qu100 = $_POST['289'];

	$qu101 = $_POST['290'];
	$qu102= $_POST['291'];
	
	




/////////////////////2ND SUBJECT STARTS HERE
//for second subject 
	$s_option1 = $_POST['subj2292'];

	$s_option2 = $_POST['subj2293'];
	$s_option3 = $_POST['subj2294'];
	$s_option4 = $_POST['subj2295'];
	$s_option5 = $_POST['subj2296'];
	$s_option6 = $_POST['subj2297'];
	$s_option7 = $_POST['subj2298'];
	$s_option8 = $_POST['subj2299'];
	$s_option9 = $_POST['subj2300'];
	$s_option10 = $_POST['subj2301'];
	$s_option11 = $_POST['subj2302'];
	$s_option12 = $_POST['subj2303'];
	$s_option13 = $_POST['subj2304'];
	$s_option14 = $_POST['subj2305'];
	$s_option15 = $_POST['subj2306'];
	$s_option16 = $_POST['subj2307'];
	$s_option17 = $_POST['subj2308'];
	$s_option18 = $_POST['subj2309'];
	$s_option19 = $_POST['subj2310'];

	$s_option20 = $_POST['subj2311'];
	$s_option21 = $_POST['subj2312'];
	$s_option22 = $_POST['subj2313'];
	$s_option23 = $_POST['subj2314'];
	$s_option24 = $_POST['subj2315'];
	$s_option25 = $_POST['subj2316'];
	$s_option26 = $_POST['subj2317'];
	$s_option27 = $_POST['subj2318'];
	$s_option28 = $_POST['subj2319'];
	$s_option29 = $_POST['subj2320'];
	$s_option30 = $_POST['subj2321'];
	$s_option31 = $_POST['subj2322'];
	$s_option32 = $_POST['subj2323'];
	
//for second subejct question
	$squ1 = $_POST['292'];
	$squ2 = $_POST['293'];
	$squ3 = $_POST['294'];
	$squ4 = $_POST['295'];
	$squ5 = $_POST['296'];
	$squ6 = $_POST['297'];
	$squ7 = $_POST['298'];
	$squ8 = $_POST['299'];
	$squ9 = $_POST['300'];
	$squ10 = $_POST['301'];

	$squ11 = $_POST['302'];
	$squ12 = $_POST['303'];
	$squ13 = $_POST['304'];
	$squ14 = $_POST['305'];
	$squ15 = $_POST['306'];
	$squ16 = $_POST['307'];
	$squ17 = $_POST['308'];
	$squ18 = $_POST['309'];

	$squ19 = $_POST['310'];
	$squ20 = $_POST['311'];
	$squ21 = $_POST['312'];
	$squ22 = $_POST['313'];
	$squ23 = $_POST['314'];
	$squ24 = $_POST['315'];
	$squ25 = $_POST['316'];
	$squ26 = $_POST['317'];
	$squ27 = $_POST['318'];
	$squ28 = $_POST['319'];
	$squ29 = $_POST['320'];
	$squ30 = $_POST['321'];
	$squ31 = $_POST['322'];
	$squ32 = $_POST['323'];

	//FOR THIRD SUBJECTS

$t_option1 = $_POST['subj366'];
$t_option2 = $_POST['subj378'];
$t_option3 = $_POST['subj3186'];
$t_option4 = $_POST['subj3227'];
$t_option5 = $_POST['subj3324'];
$t_option6 = $_POST['subj3325'];
$t_option7 = $_POST['subj3326'];
$t_option8 = $_POST['subj3327'];
$t_option9 = $_POST['subj3328'];
$t_option10 = $_POST['subj3329'];

$t_option11 = $_POST['subj3330'];
$t_option12 = $_POST['subj3331'];
$t_option13 = $_POST['subj3332'];
$t_option14 = $_POST['subj3333'];
$t_option15 = $_POST['subj3334'];
$t_option16 = $_POST['subj3335'];
$t_option17 = $_POST['subj3336'];
$t_option18 = $_POST['subj3337'];
$t_option19 = $_POST['subj3338'];
$t_option20 = $_POST['subj3339'];

$t_option21 = $_POST['subj3340'];
$t_option22 = $_POST['subj3341'];
$t_option23 = $_POST['subj3342'];
$t_option24 = $_POST['subj3343'];
$t_option25 = $_POST['subj3344'];
$t_option26 = $_POST['subj3345'];
$t_option27 = $_POST['subj3346'];
$t_option28 = $_POST['subj3347'];
$t_option29 = $_POST['subj3348'];
$t_option30 = $_POST['subj3349'];

$t_option31 = $_POST['subj3350'];
$t_option32 = $_POST['subj3351'];
$t_option33 = $_POST['subj3352'];
$t_option34 = $_POST['subj3353'];
$t_option35 = $_POST['subj3354'];
$t_option36 = $_POST['subj3355'];
$t_option37 = $_POST['subj3356'];
$t_option38 = $_POST['subj3357'];
$t_option39 = $_POST['subj3358'];
$t_option40 = $_POST['subj3359'];

$t_option41 = $_POST['subj3360'];
$t_option42 = $_POST['subj3361'];
$t_option43 = $_POST['subj3362'];
$t_option44 = $_POST['subj3363'];
$t_option45 = $_POST['subj3364'];

//for third subject questions

$tqu1 = $_POST['66'];
$tqu2 = $_POST['78'];
$tqu3 = $_POST['186'];
$tqu4 = $_POST['227'];
$tqu5 = $_POST['324'];
$tqu6 = $_POST['325'];
$tqu7 = $_POST['326'];
$tqu8 = $_POST['327'];
$tqu9 = $_POST['328'];
$tqu10 = $_POST['329'];
$tqu11 = $_POST['330'];

$tqu12 = $_POST['331'];
$tqu13 = $_POST['332'];
$tqu14 = $_POST['333'];
$tqu15 = $_POST['334'];
$tqu16 = $_POST['335'];
$tqu17 = $_POST['336'];
$tqu18 = $_POST['337'];
$tqu19 = $_POST['338'];
$tqu20 = $_POST['339'];
$tqu21 = $_POST['340'];

$tqu22 = $_POST['341'];
$tqu23 = $_POST['342'];
$tqu24 = $_POST['343'];
$tqu25 = $_POST['344'];
$tqu26 = $_POST['345'];
$tqu27 = $_POST['346'];
$tqu28 = $_POST['347'];
$tqu29 = $_POST['348'];
$tqu30 = $_POST['349'];

$tqu31 = $_POST['350'];
$tqu32 = $_POST['351'];
$tqu33 = $_POST['352'];
$tqu34 = $_POST['353'];
$tqu35 = $_POST['354'];
$tqu36 = $_POST['355'];
$tqu37 = $_POST['356'];
$tqu38 = $_POST['357'];
$tqu39 = $_POST['358'];
$tqu40 = $_POST['359'];

$tqu41 = $_POST['360'];
$tqu42 = $_POST['361'];
$tqu43 = $_POST['362'];
$tqu44 = $_POST['363'];
$tqu45 = $_POST['364'];


////FOR FOURTH SUBJECT
$f_option1 = $_POST['subj452'];
$f_option2 = $_POST['subj453'];
$f_option3 = $_POST['subj454'];
$f_option4 = $_POST['subj455'];
$f_option5 = $_POST['subj456'];
$f_option6 = $_POST['subj457'];
$f_option7 = $_POST['subj458'];
$f_option8 = $_POST['subj459'];
$f_option9 = $_POST['subj460'];

$f_option10 = $_POST['subj461'];
$f_option11 = $_POST['subj462'];
$f_option12 = $_POST['subj463'];
$f_option13 = $_POST['subj464'];
$f_option14 = $_POST['subj465'];
$f_option15 = $_POST['subj467'];
$f_option16 = $_POST['subj468'];
$f_option17 = $_POST['subj469'];
$f_option18 = $_POST['subj470'];
$f_option19 = $_POST['subj471'];

$f_option20 = $_POST['subj472'];
$f_option21 = $_POST['subj473'];
$f_option22 = $_POST['subj474'];
$f_option23 = $_POST['subj475'];
$f_option24 = $_POST['subj476'];
$f_option25 = $_POST['subj477'];
$f_option26 = $_POST['subj479'];
$f_option27 = $_POST['subj480'];
$f_option28 = $_POST['subj481'];
$f_option29 = $_POST['subj482'];

$f_option30 = $_POST['subj483'];
$f_option31 = $_POST['subj484'];
$f_option32 = $_POST['subj485'];
$f_option33 = $_POST['subj486'];
$f_option34 = $_POST['subj487'];
$f_option35 = $_POST['subj488'];
$f_option36 = $_POST['subj489'];
$f_option37 = $_POST['subj490'];
$f_option38 = $_POST['subj491'];
$f_option39 = $_POST['subj492'];

$f_option40 = $_POST['subj493'];
$f_option41 = $_POST['subj494'];
$f_option42 = $_POST['subj495'];
$f_option43 = $_POST['subj496'];
$f_option44 = $_POST['subj497'];
$f_option45 = $_POST['subj498'];
$f_option46 = $_POST['subj499'];
$f_option47 = $_POST['subj4100'];
$f_option48 = $_POST['subj4101'];
$f_option49 = $_POST['subj4102'];

$f_option50 = $_POST['subj4103'];
$f_option51 = $_POST['subj4104'];
$f_option52 = $_POST['subj4105'];
$f_option53 = $_POST['subj4106'];
$f_option54 = $_POST['subj4107'];
$f_option55 = $_POST['subj4108'];
$f_option56 = $_POST['subj4109'];
$f_option57 = $_POST['subj4110'];
$f_option58 = $_POST['subj4111'];
$f_option59 = $_POST['subj4112'];

$f_option60 = $_POST['subj4113'];
$f_option61 = $_POST['subj4114'];
$f_option62 = $_POST['subj4115'];
$f_option63 = $_POST['subj4116'];
$f_option64 = $_POST['subj4117'];
$f_option65 = $_POST['subj4118'];
$f_option66 = $_POST['subj4119'];


/// For fourth subject questions

$fqu1 = $_POST['52'];
$fqu2 = $_POST['53'];
$fqu3 = $_POST['54'];
$fqu4 = $_POST['55'];
$fqu5 = $_POST['56'];
$fqu6 = $_POST['57'];
$fqu7 = $_POST['58'];
$fqu8 = $_POST['59'];
$fqu9 = $_POST['60'];

$fqu10 = $_POST['61'];
$fqu11 = $_POST['62'];
$fqu12 = $_POST['63'];
$fqu13 = $_POST['64'];
$fqu14 = $_POST['65'];
$fqu15 = $_POST['67'];
$fqu16 = $_POST['68'];
$fqu17 = $_POST['69'];
$fqu18 = $_POST['70'];

$fqu19 = $_POST['71'];
$fqu20 = $_POST['72'];
$fqu21 = $_POST['73'];
$fqu22 = $_POST['74'];
$fqu23 = $_POST['75'];
$fqu24 = $_POST['76'];
$fqu25 = $_POST['77'];
$fqu26 = $_POST['79'];
$fqu27 = $_POST['89'];
$fqu28 = $_POST['81'];

$fqu29 = $_POST['82'];
$fqu30 = $_POST['83'];
$fqu31 = $_POST['84'];
$fqu32 = $_POST['85'];
$fqu33 = $_POST['86'];
$fqu34 = $_POST['87'];
$fqu35 = $_POST['88'];
$fqu36 = $_POST['89'];
$fqu37 = $_POST['90'];
$fqu38 = $_POST['91'];

$fqu39 = $_POST['92'];
$fqu40 = $_POST['93'];
$fqu41 = $_POST['94'];
$fqu42 = $_POST['95'];
$fqu43 = $_POST['96'];
$fqu44 = $_POST['97'];
$fqu45 = $_POST['98'];
$fqu46 = $_POST['99'];
$fqu47 = $_POST['100'];
$fqu48 = $_POST['101'];

$fqu49 = $_POST['102'];
$fqu50 = $_POST['103'];
$fqu51 = $_POST['104'];
$fqu52 = $_POST['105'];
$fqu53 = $_POST['106'];
$fqu54 = $_POST['107'];
$fqu55 = $_POST['108'];
$fqu56 = $_POST['109'];
$fqu57 = $_POST['110'];
$fqu58 = $_POST['111'];

$fqu59 = $_POST['112'];
$fqu60 = $_POST['113'];
$fqu61 = $_POST['114'];
$fqu62 = $_POST['115'];
$fqu63 = $_POST['116'];
$fqu64 = $_POST['117'];
$fqu65 = $_POST['118'];
$fqu66 = $_POST['119'];





	include 'includes/fetch_question.php';
	include 'includes/fetch_answer.php';
	include 'includes/calculate.php';


$insert = mysqli_query($con, "INSERT INTO result (student_id,subject1,subject2,subject3,subject4,subject1_score,subject2_score,subject3_score,subject4_score,total,jamb_reg) VALUES ('$takeexam','$subject1','$subject2','$subject3','$subject4','$aggregate','$saggregate','$taggregate','$faggregate','$total_aggregate','$jambreg')");
if ($insert) {
	header("Location:index.php");
}

}
?>
