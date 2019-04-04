<?php
include 'includes/config.php';
session_start();
/*$date =date("Y")+1;
echo $date;*/
/*if (isset($_POST['purchasepinbtn'])) {
    $enterno = $_POST['enterno'];


    for ($i=1; $i <=$enterno ; $i++) { 
//$pin = rand(111119999,99999999);
$year = date("Y")+1;
    $regno = $year.rand(99999999,111119999);
        $queryinsert = mysqli_query($con,"INSERT into regno (regno,status) VALUES ('$regno','UNUSED')");
    }
    if ($queryinsert) {
        echo "<script>
    alert('Successful');
</script>";
    }
    else{
        echo "<script>
    alert('Error');
</script>";
    }
}*/

//to reprint slip
if (isset($_POST['submitreprintslip'])) {
    $reprintregno = $_POST['reprintregno'];
    $queryreprint = mysqli_query($con,"SELECT * FROM register WHERE jamb_reg = '$reprintregno'");
    $count = mysqli_num_rows($queryreprint);
    $fetch = mysqli_fetch_array($queryreprint);
    if ($count > 0) {
        $_SESSION['reprintslip'] = $fetch['id'];
        echo "<script>
    alert('Successful');
    window.location='reprint-slip.php';
</script>";
  
    }
    else{
         echo "<script>
    alert('Invalid Registration number provided');
</script>";
    }
}


//to take exam 2019101994730
if (isset($_POST['btntakeexam'])) {
    $takeexamregno = $_POST['takeexamregno'];
    $queryreprint = mysqli_query($con,"SELECT * FROM register WHERE jamb_reg = '$takeexamregno' AND status = 'undone' ");
    $count = mysqli_num_rows($queryreprint);
    $fetch = mysqli_fetch_array($queryreprint);
    $status = $fetch['status'];
    if ($count > 0) {
        $_SESSION['takeexam'] = $fetch['id'];
        echo "<script>
    alert('Success');
    window.location='exam-welcome.php';
</script>";
  
    }  


    else{
        $queryreprint = mysqli_query($con,"SELECT * FROM register WHERE jamb_reg = '$takeexamregno' AND status = 'done' ");
    $count = mysqli_num_rows($queryreprint);
    $fetch = mysqli_fetch_array($queryreprint);
    $status = $fetch['status'];
    if ($status == 'done') {
        echo "<script>
    alert('Do not prove too smart, you have already taken exam');
</script>";
    }
    else{
         echo "<script>
    alert('Invalid Registration number provided');
</script>";
    }
    }
    
}

?>

<?php 

if (isset($_POST['btnsignup'])) {
  $pin = $_POST['utmepinno'];
  $serial = $_POST['utmeserialno'];

  $querycheck = mysqli_query($con,"SELECT * FROM jambpin WHERE pin_no = '$pin' AND serial_no = '$serial'  ");
  $count = mysqli_num_rows($querycheck);
  $fetch = mysqli_fetch_array($querycheck);
  $status = $fetch['status'];

  if ($count >0  && $status == 'USED') {
      header('Location:signup.php');
  }
else {
     echo "<script>
    alert('Invalid Pin or Serial Number!');
     window.location='index.php';
</script>";

}
}
 ?>
<?php 
if (isset($_POST['btncheckresult'])) {

    $checkresult = $_POST['checkresult'];
    $queryslip = mysqli_query($con,"SELECT * FROM result WHERE jamb_reg = '$checkresult'");
    $count = mysqli_num_rows($queryslip);
$fetch = mysqli_fetch_array($queryslip);
 if ($count > 0) {
    $_SESSION['checkresult'] = $fetch['student_id'];
    header('Location:result_slip.php');
 }
 else {
    echo "<script>
    alert('Result Not Avaialble for this Candidate!');
     window.location='index.php';
</script>";

 }
}

 ?>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width,  initial-scale=1, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, maximum-scale=1"> 
<head runat="server">
    <link rel="shortcut icon"  href="Images/bg_img.png">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122567898-1"></script>
    <script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-122567898-1');
    </script>
    <meta name="Search.WLSearchBox" content="1.1, en-US" />
    <title>Joint Admissions and Matriculation Board </title>
    <link href="JambCss.css" rel="stylesheet" type="text/css" />
    <link href="Images/main.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap/dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <!--   <link rel="stylesheet" type="text/css" href="fonts/font-awesome.min.css"> -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    
    
    <script type="text/javascript">
        $(document).ready(function () {
            // bind the click event
            $('#basic').click(function () {
                alert('baz');
            });
            // trigger the click event
            $('#basic').click();
        });
    </script>
    <!--<script type="text/javascript">
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-47314654-1', 'jamb.org.ng');
        ga('send', 'pageview');

    </script>
    -->

    <style type="text/css">
        .panel-heading {
            padding: 10px 15px;
            border-bottom: 1px solid transparent;
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
            background-color: #d3e1d2;
            color: #007700;
        }

        .home_link {
            /*float: right;*/
            margin: 3px 30px;
            position: relative;
            background: #007700;
            color: #fff;
            font-weight: bold;
            padding: 10px 15px;
            text-align: center;
            -moz-transition: all 0.4s ease-in-out;
            -o-transition: all 0.4s ease-in-out;
            -webkit-transition: all 0.4s ease-in-out;
            transition: all 0.4s ease-in-out;
            -o-border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            cursor: pointer;
        }

            .home_link:hover {
                background: #005500;
            }

            .home_link a {
                color: #fff;
                text-decoration: none;
            }

        .home_link2 {
            float: left;
            margin: -5px 5px 20px 5px;
            position: relative;
            background: #007700;
            color: #fff;
            font-weight: bold;
            padding: 10px 15px;
            text-align: center;
            -moz-transition: all 0.4s ease-in-out;
            -o-transition: all 0.4s ease-in-out;
            -webkit-transition: all 0.4s ease-in-out;
            transition: all 0.4s ease-in-out;
            -o-border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            cursor: pointer;
        }

        .home_link3 {
            background: #2f99bd;
            -moz-transition: all 0.4s ease-in-out;
            -o-transition: all 0.4s ease-in-out;
            -webkit-transition: all 0.4s ease-in-out;
            transition: all 0.4s ease-in-out;
            -o-border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            cursor: pointer;
        }

        .mypets {
            /*header of 1st demo*/
            cursor: hand;
            cursor: pointer;
            padding: 2px 5px;
            border: 1px solid gray;
            background: #E1E1E1;
        }

        .openpet {
            /*class added to contents of 1st demo when they are open*/
            background: orange;
        }

        .technology {
            /*header of 2nd demo*/
            cursor: hand;
            cursor: pointer;
            font: bold 14px Verdana;
            margin: 10px 0;
        }


        .openlanguage {
            /*class added to contents of 2nd demo when they are open*/
            color: green;
        }

        .closedlanguage {
            /*class added to contents of 2nd demo when they are closed*/
            color: red;
        }
    </style>
    <script>
        $(function () {
            $(document).on('mouseenter.collapse', '[data-toggle=collapse]', function (e) {
                var $this = $(this),
                    href,
                    target = $this.attr('data-target')
                             || e.preventDefault()
                             || (href = $this.attr('href'))
                             && href.replace(/.*(?=#[^\s]+$)/, ''), //strip for ie7
                    option = $(target).hasClass('in') ? 'hide' : "show"

                $('.panel-collapse').not(target).collapse("hide")
                $(target).collapse(option);
            })
        });
    </script>
    <script type="text/javaScript">

        //Initialize first demo:
        ddaccordion.init({
            headerclass: "mypets", //Shared CSS class name of headers group
            contentclass: "thepet", //Shared CSS class name of contents group
            revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
            mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
            collapseprev: true, //Collapse previous content (so only one open at any time)? true/false
            defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.
            onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
            animatedefault: false, //Should contents open by default be animated into view?
            scrolltoheader: false, //scroll to header each time after it's been expanded by the user?
            persiststate: true, //persist state of opened contents within browser session?
            toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
            togglehtml: ["none", "", ""], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
            animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
            oninit: function (expandedindices) { //custom code to run when headers have initalized
                //do nothing
            },
            onopenclose: function (header, index, state, isuseractivated) { //custom code to run whenever a header is opened or closed
                //do nothing
            }
        })

        //Initialize 2nd demo:
        ddaccordion.init({
            headerclass: "technology", //Shared CSS class name of headers group
            contentclass: "thelanguage", //Shared CSS class name of contents group
            revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
            mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
            collapseprev: false, //Collapse previous content (so only one open at any time)? true/false
            defaultexpanded: [], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.
            onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
            animatedefault: false, //Should contents open by default be animated into view?
            scrolltoheader: false, //scroll to header each time after it's been expanded by the user?
            persiststate: false, //persist state of opened contents within browser session?
            toggleclass: ["closedlanguage", "openlanguage"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
            togglehtml: ["prefix", "<img src='http://i13.tinypic.com/80mxwlz.gif' style='width:13px; height:13px' /> ", "<img src='http://i18.tinypic.com/6tpc4td.gif' style='width:13px; height:13px' /> "], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
            animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
            oninit: function (expandedindices) { //custom code to run when headers have initalized
                //do nothing
            },
            onopenclose: function (header, index, state, isuseractivated) { //custom code to run whenever a header is opened or closed
                //do nothing
            }
        })

    </script>
    <script language="JavaScript">
        function NotAvailableDE() {
            alert("2018 Direct Entry e-Registration Will Soon Be Available. Thank you!");
        }
    </script>
    <script language="JavaScript">
        function LaunchDE() {
            UmePage = window.open('DirectEntry', 'DirectEntry', 'left=150,top=20,height=683,width=1200,scrollbars=yes,status=yes,resizeable=yes');
            UmePage.focus();

        }

    </script>
    <script language="JavaScript">
        function LaunchCafeReg() {
            UmePage = window.open('Unifiedtme/CyberAdmin/Default.aspx', 'DirectEntry', 'left=150,top=20,height=683,width=1200,scrollbars=yes,status=yes,resizeable=yes');
            UmePage.focus();

        }
    </script>
    <script language="JavaScript">
        function NotAvailableUTME() {
            alert("2018 Unified Tertiary Matriculation Examination e-Registration Will Soon Be Available. appThank you!");
        }
    </script>
    <script language="JavaScript">
        function LaunchOsun() {
            UTMEPage = window.open('Osun', 'State of Osun', 'left=150,top=20,height=683,width=1200,scrollbars=yes,status=yes,resizeable=yes');
            UTMEPage.focus();

        }
    </script>
    <script language="JavaScript">
        function LaunchUTME() {
            UTMEPage = window.open('Unifiedtme', 'UTME2013', 'left=150,top=20,height=683,width=1200,scrollbars=yes,status=yes,resizeable=yes');
            UTMEPage.focus();

        }
    </script>
    <script language="JavaScript">
        function LaunchUTME2014() {
            UTMEPage = window.open('Unifiedtme2014', 'UTME2014', 'left=150,top=20,height=683,width=1200,scrollbars=yes,status=yes,resizeable=yes');
            UTMEPage.focus();

        }
    </script>
    <script language="JavaScript">
        function LaunchRegularization() {
            UmePage = window.open('postregistrationefacility/Regularize.aspx', 'Regularization', 'left=150,top=20,height=600,width=840,scrollbars=yes,status=yes,resizeable=yes');
            UmePage.focus();

        }
    </script>
    <!-- <script language="JavaScript">
        function LaunchPostRegistrationeFacility(id) {
            var query =   encodeURIComponent(id);
            window.location = uri;
            UmePage = window.open('/postregistrationefacility/ValidatePIN.aspx?id=' + encodeURIComponent(query) + '', 'LoginAdmissionLetterPrinting', 'left=150,top=20,height=600,width=840,scrollbars=yes,status=yes,resizeable=yes');
            UmePage.focus();

        }
    </script>-->
    <script language="JavaScript">
        function LaunchPostRegistrationeFacility(id) {
            UmePage = window.open('/postregistrationefacility/ValidatePIN.aspx?id=' + id + '', 'LoginAdmissionLetterPrinting', 'left=150,top=20,height=600,width=840,scrollbars=yes,status=yes,resizeable=yes');
            UmePage.focus();

        }
    </script>
    <script language="JavaScript">
        function LaunchCheckPosting(id) {
            UmePage = window.open('/postregistrationefacility/CheckAdmissionRecommendationStatus.aspx?id=' + id + '', 'LoginAdmissionLetterPrinting', 'left=150,top=20,height=600,width=840,scrollbars=yes,status=yes,resizeable=yes');
            UmePage.focus();

        }
    </script>
    <!--  <script language="JavaScript">
        function LaunchForeignResult(id) {
            UmePage = window.open('/postregistrationefacility/PrintForeignResult.aspx?id=' + id + '', 'PrintForeignResultPrinting', 'left=150,top=20,height=600,width=840,scrollbars=yes,status=yes,resizeable=yes');
            UmePage.focus();
        }
    </script>-->
    <script language="JavaScript">
        function LaunchPostRegistrationeFacilitySoon() {
            alert("2015 Unified Tertiary Matriculation Examination Change of Institution/Course Will Soon Be Available. Thank you!");
        }
    </script>
    <script language="JavaScript">
        function LaunchChangeofCourseFromRegCentres() {
            UmePage = window.open('unifiedtme/regCentreLogin.aspx', 'ChangeofCourse', 'left=150,top=20,height=600,width=900,scrollbars=yes,status=yes,resizeable=yes');
            UmePage.focus();
        }
    </script>
    <script language="JavaScript">
        function LaunchChangeofCourseDEFromRegCentres() {
            UmePage = window.open('DirectEntry/regCentreLogin.aspx', 'ChangeofCourse', 'left=150,top=20,height=600,width=900,scrollbars=yes,status=yes,resizeable=yes');
            UmePage.focus();
        }
    </script>
    <script language="JavaScript">
        function LaunchAdmissionStatus(id) {
            UmePage = window.open('/postregistrationefacility/CheckAdmissionStatus.aspx?id=' + id + '', 'LoginAdmissionStatus', 'left=150,top=20,height=600,width=840,scrollbars=yes,status=yes,resizeable=yes');
            UmePage.focus();

        }
        function LaunchCheckResult(id) {
            UmePage = window.open('/postregistrationefacility/VerifyResult.aspx?id=' + id + '', 'LoginCheckResult', 'left=150,top=20,height=600,width=840,scrollbars=yes,status=yes,resizeable=yes');
            UmePage.focus();

        }
        function LaunchAmendRegularized(id) {
            UmePage = window.open('/postregistrationefacility/ChangeGenderLGA.aspx?id=' + id + '', 'ChangeGenderLGA', 'left=150,top=20,height=600,width=840,scrollbars=yes,status=yes,resizeable=yes');
            UmePage.focus();

        }
    </script>
    <style type="text/css">
        .outLi {
            font-size: 12px;
            color: #2D4A3E;
            font-weight: bold;
            list-style-type: none;
            width: 340px;
        }

        .inLi {
            font-size: 13px;
            color: #530000;
            font-weight: normal;
            list-style-type: square;
        }

        .style3 {
            width: 80%;
        }

        .style4 {
            width: 100%;
        }

        .style5 {
            width: 98%;
        }

        .style6 {
            width: 470px;
            height: 40px;
        }
    </style>
    <script language="JavaScript">
<!--
        function SoonBeAvailable() {
            alert("2009 MPCE e-Registration will commence very soon, thank you!");
        }

        function MM_swapImgRestore() { //v3.0
            var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
        }

        function MM_preloadImages() { //v3.0
            var d = document; if (d.images) {
                if (!d.MM_p) d.MM_p = new Array();
                var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
                    if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; }
            }
        }

        function MM_findObj(n, d) { //v4.01
            var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
                d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
            }
            if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
            for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
            if (!x && d.getElementById) x = d.getElementById(n); return x;
        }

        function MM_swapImage() { //v3.0
            var i, j = 0, x, a = MM_swapImage.arguments; document.MM_sr = new Array; for (i = 0; i < (a.length - 2); i += 3)
                if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src; x.src = a[i + 2]; }
        }

//-->
    </script>
    <!-- Page styles -->
    <link type='text/css' href='css/demo.css' rel='stylesheet' media='screen' />
    <!-- Contact Form CSS files -->
    <link type='text/css' href='css/basic.css' rel='stylesheet' media='screen' />
    <!-- IE6 "fix" for the close png image -->
    <!--[if lt IE 7]>
    <link type='text/css' href='css/basic_ie.css' rel='stylesheet' media='screen' />
    <![endif]-->
    <!-- JS files are loaded at the bottom of the page -->
    <!-- This sections is responsible for the Background Carousel (CSS, JSript and HTML from top to bottom) -->
    <style>
        html {
            position: relative;
            min-height: 100%;
        }

        .carousel-fade .carousel-inner .item {
            opacity: 0;
            transition-property: opacity;
        }

        .carousel-fade .carousel-inner .active {
            opacity: 1;
        }

            .carousel-fade .carousel-inner .active.left, .carousel-fade .carousel-inner .active.right {
                left: 0;
                opacity: 0;
                z-index: 1;
            }

        .carousel-fade .carousel-inner .next.left, .carousel-fade .carousel-inner .prev.right {
            opacity: 1;
        }

        .carousel-fade .carousel-control {
            z-index: 2;
        }

        @media all and (transform-3d), (-webkit-transform-3d) {
            .carousel-fade .carousel-inner > .item.next, .carousel-fade .carousel-inner > .item.active.right {
                opacity: 0;
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }

            .carousel-fade .carousel-inner > .item.prev, .carousel-fade .carousel-inner > .item.active.left {
                opacity: 0;
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }

                .carousel-fade .carousel-inner > .item.next.left, .carousel-fade .carousel-inner > .item.prev.right, .carousel-fade .carousel-inner > .item.active {
                    opacity: 1;
                    -webkit-transform: translate3d(0, 0, 0);
                    transform: translate3d(0, 0, 0);
                }
        }

        .item:nth-child(1) {
            background: url(images/5.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }

        .item:nth-child(2) {
            background: url(images/4.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }

        .carousel {
            z-index: -99;
        }

            .carousel .item {
                position: fixed;
                width: 100%;
                height: 100%;
            }
    </style>
    <script>
        $('.carousel').carousel();
    </script>

</head>
<body>
    <!--<body  onload="PageLoadClick()">
    -->
    <div class="carousel slide carousel-fade" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
            </div>
            <div class="item">
            </div>
        </div>
    </div>
    <div>
        <table align="center" cellpadding="3" cellspacing="3" class="style3">
            <tr>
                <td style="width: 800px; border-style: none; box-shadow: none;" class="RoundedTable TextFormat">
                    <table align="center" cellpadding="0" cellspacing="0" class="style4">
                        <tr>
                            <td>
                                <table align="center" cellpadding="0" cellspacing="0" class="style4">
                                    <tr>
                                        <td style="text-align: center;">
                                            <img src="images/banner.png" style="margin: 0 auto;display:block" class="img-responsive" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>

                                    <tr>
                                        <td valign="top">
                                            <table align="center" cellpadding="3" class="style4" cellspacing="3" style="width: 95%">
                                                <tr>
                                                    <td colspan="2" class="" valign="top" style="font-size: 11px; font-weight: bold;
                    color: #00822B; text-align: center">
                                                        <!--Download the JAMB Mobile Service application from the store<br />
                                                        <a title="Google Playstore" target="_blank" href="https://play.google.com/store/apps/details?id=com.sidmach.jambefacility">
                                                            <img alt="Google Playstore" height="63" src="images/google%20play.png" /></a>
                                                        <a title="Microsoft Windows Store" target="_blank" href="http://www.windowsphone.com/s?appid=4f5406cc-f0ad-41b4-af2b-ce842715f87d">
                                                            <img alt="Microsoft Windows Store" height="63" src="images/wp8logo.png" />
                                                        </a>-->
                                                        <a title="Important Information for Foreign Candidates" target="_blank" href="http://www.jamb.gov.ng/foreigncandidates.aspx">
                                                            <!--<img alt="Microsoft Windows Store" height="63" src="images/wp8logo.png" />-->
                                                        </a>
                                                    </td>
                                                </tr>
                                            </table>

                                            <!-- Trigger the modal with a button -->
                                            <!--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>-->
                                            <!-- Modal -->
                                            
                                            

                                            <div style="line-height: 1">
                                                <div class="text-center">
                                                    <h3>
                                                        Applications
                                                    </h3>
                                                </div>
                                                <div class="row" style="width: 98%; margin: auto">







                                                <div class="col-lg-4 col-md-4">
                                                        <div class="panel panel-primary" style="box-shadow:0 0 10px #b2d5b2;min-height: 119px;">
                                                            <!--<div class="panel-heading" style="border-color: #2b7bc7; background-color: #A0CBF1;">
                                                                <div class="row">
                                                                    <div class="col-xs-1">
                                                                        <i class="fa fa-comments fa-5x"></i>
                                                                    </div>
                                                                    <div class="col-xs-11 text-left">
                                                                        <div class="huge">
                                                                        </div>
                                                                        <div style="font-size: 18px; color: #E75E5E;">
                                                                            Download Mobile Apps
                                                                        </div>
                                                                        <br />

                                                                    </div>
                                                                </div>
                                                            </div>-->
                                                            <div class="panel-body" style="text-align:left">
                                                                <a href="http://www.jamb.gov.ng/foreigncandidates.aspx" target="_blank" class="" style="color: #007700;
                                                                    text-decoration: none;">&#10097; Important Information for Foreign Candidates &#10096;</a>
                                                                <br />
                                                                <br />
                                                                <br />
                                                                <br />
                                                                


<div class="containerdddddd">
  
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info home_link3 btn-sm" data-toggle="modal" data-target="#myModal" style="color: #fff;border-radius:25px;
                                                                    text-decoration: none; line-height: 25px;">&#10097;&nbsp;&nbsp;UTME Registration Guide&nbsp;&nbsp;&#10096;</button>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">UTME Registration Guide</h4>
        </div>
        <div class="modal-body">
          <p>
         <ul>
        <li><span style="font-weight:bold;text-decoration:underline; cursor: pointer;">Create an account</span> on this platform (You do not need to create account if you already have one)</li>
        <br> <br>

        <li>NOTE: UTME REGISTRATION PIN cost #5,000. Kindly provide your Full Real Name and valid Email Address when ever you want to purchase the UTME PIN.
           </li>
        <br><br>

        <li>Email Address can only be use by one student</li>
         <br> <br>
        <li>Payment of PIN can only be done Online here with your ATM card be it VISA card nor Mastercard</li>
         <br> <br>
        <li>After Payment Successful, PIN will be sent to the provided email address</li>
         <br> <br>
        <li>Never disclose your PIN to anyone else or third party</li>
         <br> <br>
        <li>
        <b>Note</b>: After gotten the PIN, click on Sign Up for UTME / DE at jamb website homepage and enter your PIN with the provided full name during the PIN purchase payment to start your full registration.
        </li>
        </ul>
        </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  
</div>


<!--buy pin for registration starts here-->
<p style="padding-top: 20px;">
    <div class="containerdddddd">
  
  <!-- Trigger the modal with a button -->
  <button type="button"  class="btn btn-info home_link3 btn-sm" data-toggle="modal" data-target="#purchasepin" style="color: #fff;border-radius:25px;
                                                                    text-decoration: none; line-height: 25px;">&#10097;&nbsp;&nbsp;Purchase UTME PIN&nbsp;&nbsp;&#10096;</button>
<div class="modal fade" id="purchasepin" role="dialog" style="padding-top: 120px;">
    <div class="modal-dialog" >
    <?php
    $payable = 5;
    $price = 5;
    ?>
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Purchase UTME PIN</h4><br>
                  </div>
        <div class="modal-body" style="margin-left: 70px; margin-right: 70px;">
          <p>
        <form action="https://voguepay.com/pay/" method="post">
                        <!-- PAYMENT PROCESSOR-->

        <input name="item_1" type="hidden" value="JAMB UTME PIN PAYMENT"/>
                            <input name="description_1" type="hidden" value="<?php echo'JAMB 2018/2019 UTME PIN Purchase';?>"/> 
                            <input name="price_1" type="hidden" value="JAMB UTME PIN @ # 5"/>
                            <input name="memo" type="hidden" value="JAMB 2018/2019 UTME PIN PURCHASE"/>
                            <input name="merchant_ref" type="hidden" value="<?php echo 2;?>"/>
                            <input type='hidden' name='notify_url' value='http://localhost/jamb/process.php' />
                            <input type='hidden' name='success_url' value='http://localhost/jamb/process.php' />
                            <input type='hidden' name='fail_url' value='http://localhost/jamb/process.php' />
                            <input type='hidden' name='total' value='5' />
                            <input type='hidden' name='v_merchant_id' value='13347-14907' />

                        <!-- PAYMENT PROCESSOR-->




    <div class="form-group">
                        <label class="sr-only">Enter Phone No</label>
                        <div class="form-2"><i class="fa fa-lock"></i><input type="number" name="phone" id="phone" class='form-control' placeholder="Enter Phone No" required ></div>
                    </div> 



        <div class="form-group">
                        <label class="sr-only">Enter Email Address</label>
                        <div class="form-2"><i class="fa fa-lock"></i><input type="email" name="email" id="email" class='form-control' placeholder="Enter Email Address" required ></div>
                    </div>

                   <!--  <div class="form-group">
                        <label class="sr-only">Enter No</label>
                        <div class="form-2"><i class="fa fa-lock"></i><input type="number" name="enterno" id="enterno" class='form-control' placeholder="Enter No" required ></div>
                    </div> -->
       

         

                    

                                        <div class="form-group">
                    <p id="purchasepinrequired">*: All fields are required</p>
                        <button type="submit" class="btn btn-success btn-block" id="purchasepinbtn" name="purchasepinbtn"  >Purchase Pin <i class="fa fa-arrow-right"></i></button>
                    </div>
        </p>
        </form>
        </div>
       
      </div>
      
    </div>
  </div>
  
  
</div>
</p>
<!--pin ends here-->

<!--Sign up for utme/de starts here with pin
<!-- -->
<p style="padding-top: 20px;">
    <div class="containerdddddd">
  
  <!-- Trigger the modal with a button -->
  <button type="button"  class="btn btn-info home_link3 btn-sm" data-toggle="modal" data-target="#signupforutmede" style="color: #fff;border-radius:25px;
                                                                    text-decoration: none; line-height: 25px;">&#10097;&nbsp;&nbsp;SIGN Up For UTME / DE&nbsp;&nbsp;&#10096;</button>
<div class="modal fade" id="signupforutmede" role="dialog" style="padding-top: 120px;">
    <div class="modal-dialog" >
    
      <!-- Modal content-->

      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Start UTME Registration</h4><br>
                  </div>
        <div class="modal-body" style="margin-left: 70px; margin-right: 70px;">
          <p>
        <form action="" method="post">
        <div class="form-group">
                        <label class="sr-only">Enter UTME PIN</label>
                        <div class="form-2"><i class="fa fa-lock"></i><input type="text" name="utmepinno" id="fullname" class='form-control' placeholder="Enter UTME PIN" required ></div>
                    </div>



        <div class="form-group">
                        <label class="sr-only">Enter UTME SERIAL NO.</label>
                        <div class="form-2"><i class="fa fa-lock"></i><input type="text" name="utmeserialno" id="pin" class='form-control' placeholder="Enter UTME SERIAL NO." required ></div>
                    </div>
       

         

                    

                                        <div class="form-group">
                    <p id="purchasepinrequired">*: All fields are required</p>
                        <button type="submit" class="btn btn-success btn-block" name="btnsignup"  id="btnsignup">SIGN UP <i class="fa fa-arrow-right"></i></button>
                    </div>
        </p>
        </form>
        </div>
       
      </div>
      
    </div>
  </div>
  
  
</div>
</p>
                                                            </div>

                                                        </div>
                                                    </div>












                                                    <div class="col-lg-7 col-md-7" style="margin-left: 70px;">
                                                        <div class="panel panel-primary" style="border-color: #2b7bc7;min-height: 119px;">
                                                            <div class="panel-heading" style="border-color: #2b7bc7; background-color: #A0CBF1;">
                                                                <div class="row">
                                                                    <div class="col-xs-1">
                                                                        <i class="fa fa-comments fa-5x"></i>
                                                                    </div>
                                                                    <div class="col-xs-11 text-left">
                                                                        <div class="huge">
                                                                        </div>
                                                                        <div style="font-size: 18px; color: #E75E5E;">
                                                                            UTME Registration
                                                                        </div>
                                                                        <br />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="panel-footer" style="padding-top:18px ;padding-bottom:29px; margin-left: 50px;">
                                                               
                                                              


                                                                <div style="margin-top:8px; cursor: pointer;" id="clickreprintslip" class="btn btn-success">Reprint Examination Slip</div> 
                                                                    <br>  
                            <!--Reprint exam slip starts here-->  <form action="" method="post">
                            <div class="showreprintslip" style="display: none;">
                                                                <div class="form-group">
                        <label class="sr-only">Input Your Reg. Number</label>
                        <div class="form-2"><i class="fa fa-lock"></i><input type="text" name="reprintregno" id="inputregno" class='form-control' placeholder="Input Your Registration No" /></div>
                    </div>

                    

                                        <div class="form-group">
                    <p id="reprintsliprequired">*:Registration Number required</p>
                        <button type="submit" class="btn btn-success btn-block" id="submitreprintslip" name="submitreprintslip">Reprint Slip <i class="fa fa-arrow-right"></i></button>
                    </div>
                    </div>
                    </form>
                        <!--Reprint exam slip ends here-->
                                                                <div style="margin-top:8px;" class="btn btn-success" id="clicktakeexam"><i class="fa fa-home"></i> Take Examination (UTME) <span class="caret"></span></div>
                    <!--Take exam starts here-->  <form action="" method="post">
                            <div class="showtakeexam" style="display: none;">
                                                                <div class="form-group">
                        <label class="sr-only">Input Your Reg. Number</label>
                        <div class="form-2"><i class="fa fa-lock"></i><input type="text" name="takeexamregno" id="inputregno" class='form-control' placeholder="Input Your Registration No" /></div>
                    </div>

                    

                                        <div class="form-group">
                    <p id="reprintsliprequired">*:Registration Number required</p>
                        <button type="submit" class="btn btn-success btn-block" id="submitreprintslip" name="btntakeexam">Take Exam<i class="fa fa-arrow-right"></i></button>
                    </div>
                    </div>
                    </form>
                        <!--Take exam ends here-->



                                                                <div style="margin-top:8px;" class="btn btn-success " id="clickcheckresult"><i class="fa fa-home"></i> Check 2018/2019 UTME Result &nbsp; &nbsp; &nbsp; &nbsp;</div>
                                     <!--Check results starts here-->  <form action="" method="post">
                            <div class="checkresultregno" style="display: none;">
                                                                <div class="form-group">
                        <label class="sr-only">Input Your Reg. Number</label>
                        <div class="form-2"><i class="fa fa-lock"></i><input type="text" name="checkresult" id="checkresult" class='form-control' placeholder="Input Your Registration No" /></div>
                    </div>

                    

                                        <div class="form-group">
                    <p id="">*:Registration Number required</p>
                        <button type="submit" class="btn btn-success btn-block" id="btncheckresult" name="btncheckresult">Check Result<i class="fa fa-arrow-right"></i></button>
                    </div>
                    </div>
                    </form>
                        <!--Check results ends here-->

                                                               <!--  <div style="margin-top:8px;"><a href="ExamSlipPrinting/_CheckUTMEMockResults" target="_blank" class="btn btn-success">Check UTME Mock Results</a></div>
                                                                <div style="margin-top:8px;"><a href="ExamSlipPrinting/_CheckUTMEResults" target="_blank" class="btn btn-success">Check 2018 UTME Results</a></div> -->
                                                                <div class="clearfix">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--UTME registration-->

                                                    




                                                    <!--Direct Entry-->
                                                    
                                                    <!--mobile Apps -->

                                                </div>
                                                <br />
                                                <br />
                                            </div>
                                            <!--Aplications-->
                                            <div style="line-height: 1">
                                                <div class="text-center">

                                                    <h3 style="color: green; text-align: center;padding-left:-10px">
                                                        Post-Registration e-Facilities
                                                    </h3>

                                                </div>
                                                <!--<div class="text-center"><a href="http://www.jamb.org.ng/documents/CBT_Centres.pdf" target="_blank" class="home_link2" style="color: #fff;
                                                        text-decoration: none;">&#10097;&nbsp;&nbsp;Click to View CBT Centres&nbsp;&nbsp;&#10096;</a>
                                                    <h3 style="color: green; text-align: center;padding-left:-10px">
                                                        Post-Registration e-Facilities</h3>
                                                    <a href="http://www.jamb.org.ng/efacility" target="_blank" class="home_link" style="color: #fff;
                                                        text-decoration: none;">&#10097;&nbsp;&nbsp;Click to Create Account/Log in&nbsp;&nbsp;&#10096;</a></div>-->
                                                <div class="row" style="width: 98%; margin: auto">
                                                    <div class="col-lg-4 col-md-4">
                                                        <div class="panel panel-primary">
                                                            <a data-toggle="collapse" href="#collapse1">
                                                                <div class="panel-heading">
                                                                    <div class="row">
                                                                        <div class="col-xs-11 text-left">
                                                                            <div class="huge">
                                                                            </div>
                                                                            <div style="font-size: 18px">
                                                                                <h4 class="panel-title">
                                                                                    Print Result Slip
                                                                                </h4>
                                                                            </div>
                                                                            <br />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                            <div id="collapse1" class="panel-collapse collapse">
                                                                <div class="panel-body" style="text-align: left">
                                                                    This allows candidates to request for printing of result slip.<br />
                                                                    <br />
                                                                    Price:&#8358;1,000
                                                                </div>
                                                            </div>
                                                            <div class="panel-footer">
                                                                <a href="#" target="_blank"><span class="pull-left"></span></a><a href="printslip.htm">
                                                                    <span class="pull-right">Click here to proceed</span>
                                                                </a>
                                                                <div class="clearfix">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--printing result slip-->
                                                    <div class="col-lg-4 col-md-4">
                                                        <div class="panel panel-primary">
                                                            <a data-toggle="collapse" href="#collapse2">
                                                                <div class="panel-heading">
                                                                    <div class="row">
                                                                        <div class="col-xs-1">
                                                                            <i class="fa fa-comments fa-5x"></i>
                                                                        </div>
                                                                        <div class="col-xs-11 text-left">
                                                                            <div class="huge">
                                                                            </div>
                                                                            <div style="font-size: 18px">
                                                                                <h4 class="panel-title">
                                                                                    Admission Letter Printing
                                                                                </h4>
                                                                            </div>
                                                                            <br />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                            <div id="collapse2" class="panel-collapse collapse">
                                                                <div class="panel-body" style="text-align: left">
                                                                    This allows candidates to print Admission letters. Only candidates with admission
                                                                    will be able to use this service.<br />
                                                                    <br />
                                                                    Price:&#8358;1,000
                                                                </div>
                                                            </div>
                                                            <div class="panel-footer">
                                                                <a href="#" target="_blank"><span class="pull-left"></span></a><a href="adminprinting.htm">
                                                                    <span class="pull-right">click here to proceed</span>
                                                                </a>
                                                                <div class="clearfix">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--Admission letter printing-->
                                                    <div class="col-lg-4 col-md-4">
                                                        <div class="panel panel-primary">
                                                            <div class="panel-heading">
                                                                <a data-toggle="collapse" href="#collapse3">
                                                                    <div class="row">
                                                                        <div class="col-xs-1">
                                                                            <i class="fa fa-comments fa-5x"></i>
                                                                        </div>
                                                                        <div class="col-xs-11 text-left">
                                                                            <div class="huge">
                                                                            </div>
                                                                            <div style="font-size: 18px">
                                                                                <h4 class="panel-title">
                                                                                    Application for Correction of Data
                                                                                </h4>
                                                                            </div>
                                                                            <br />
                                                                        </div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div id="collapse3" class="panel-collapse collapse">
                                                                <div class="panel-body" style="text-align: left">
                                                                    Candidates can apply for correction of Names, Date of birth, State/Local Government
                                                                    and Gender. Payment is required for this service.
                                                                </div>
                                                            </div>
                                                            <div class="panel-footer">
                                                                <a href="#" target="_blank"><span class="pull-left"></span></a><a href="correction.htm">
                                                                    <span class="pull-right" />click here to proceed
                                                                </a>
                                                                <div class="clearfix">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--correction data-->
                                                </div>
                                                <div class="row" style="width: 98%; margin: auto">
                                                    <div class="col-lg-4 col-md-4">
                                                        <div class="panel panel-primary">
                                                            <a data-toggle="collapse" href="#collapse4">
                                                                <div class="panel-heading">
                                                                    <div class="row">
                                                                        <div class="col-xs-1">
                                                                            <i class="fa fa-comments fa-5x"></i>
                                                                        </div>
                                                                        <div class="col-xs-11 text-left">
                                                                            <div class="huge">
                                                                            </div>
                                                                            <div style="font-size: 18px">
                                                                                <h4 class="panel-title">
                                                                                    Change of Admission Letter
                                                                                </h4>
                                                                            </div>
                                                                            <br />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                            <div id="collapse4" class="panel-collapse collapse">
                                                                <div class="panel-body" style="text-align: left">
                                                                    Candidates can print their admission letter for their institution/course of choice,
                                                                    which is now different from their course/institution offered initially. A new admission
                                                                    letter can be printed after processing.<br />
                                                                    <br />
                                                                    Price:&#8358;10,000
                                                                </div>
                                                            </div>
                                                            <div class="panel-footer">
                                                                <a href="#" target="_blank"><span class="pull-left"></span></a><a href="changeadmin.htm">
                                                                    <span class="pull-right" />click here to proceed
                                                                </a>
                                                                <div class="clearfix">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--change admission letter-->
                                                    <div class="col-lg-4 col-md-4">
                                                        <div class="panel panel-primary">
                                                            <a data-toggle="collapse" href="#collapse5">
                                                                <div class="panel-heading">
                                                                    <div class="row">
                                                                        <div class="col-xs-1">
                                                                            <i class="fa fa-comments fa-5x"></i>
                                                                        </div>
                                                                        <div class="col-xs-11 text-left">
                                                                            <div class="huge">
                                                                            </div>
                                                                            <div style="font-size: 18px">
                                                                                <h4 class="panel-title">
                                                                                    Check Admission Status
                                                                                </h4>
                                                                            </div>
                                                                            <br />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                            <div id="collapse5" class="panel-collapse collapse">
                                                                <div class="panel-body" style="text-align: left">
                                                                    This allows candidates to check admission status. This is necessary before going
                                                                    ahead to make payment for Admission Letter Printing. Payment is NOT required for
                                                                    this service.
                                                                    <br />
                                                                    <br />
                                                                    Price:Free
                                                                </div>
                                                            </div>
                                                            <div class="panel-footer">
                                                                <a href="#"><span class="pull-left"></span></a><a href="efacility"
                                                                                                                  target="_blank"><span class="pull-right" />click here to proceed</a>
                                                                <div class="clearfix">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--check admission status-->
                                                    <div class="col-lg-4 col-md-4">
                                                        <div class="panel panel-primary">
                                                            <a data-toggle="collapse" href="#collapse6">
                                                                <div class="panel-heading">
                                                                    <div class="row">
                                                                        <div class="col-xs-1">
                                                                            <i class="fa fa-comments fa-5x"></i>
                                                                        </div>
                                                                        <div class="col-xs-11 text-left">
                                                                            <div class="huge">
                                                                            </div>
                                                                            <div style="font-size: 18px">
                                                                                <h4 class="panel-title">
                                                                                    Late Application
                                                                                </h4>
                                                                            </div>
                                                                            <br />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                            <div id="collapse6" class="panel-collapse collapse">
                                                                <div class="panel-body" style="text-align: left">
                                                                    This provides opportunity for candidates that are in any institution but with no
                                                                    JAMB registration number. This was formerly referred to as "regularization".<br />
                                                                    <br />
                                                                    Price:&#8358;10,000
                                                                </div>
                                                            </div>
                                                            <div class="panel-footer">
                                                                <a href="#"><span class="pull-left"></span></a><a href="lateapp.htm">
                                                                    <span class="pull-right" />
                                                                    click here to proceed
                                                                </a>
                                                                <div class="clearfix">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--late application-->
                                                    <div class="col-lg-4 col-md-4 col-md-offset-4">
                                                        <div class="panel panel-primary">
                                                            <a data-toggle="collapse" href="#collapse7">
                                                                <div class="panel-heading">
                                                                    <div class="row">
                                                                        <div class="col-xs-1">
                                                                            <i class="fa fa-comments fa-5x"></i>
                                                                        </div>
                                                                        <div class="col-xs-11 text-left">
                                                                            <div class="huge">
                                                                            </div>
                                                                            <div style="font-size: 18px">
                                                                                <h4 class="panel-title">
                                                                                    CBT Registration
                                                                                </h4>
                                                                            </div>
                                                                            <br />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                            <div id="collapse7" class="panel-collapse collapse">
                                                                <div class="panel-body" style="text-align: left">
                                                                    CBT Centre Registration Form
                                                                </div>
                                                            </div>
                                                            <div class="panel-footer">
                                                                <a href="#"><span class="pull-left"></span></a><a href="http://jamb.gov.ng/CBTRegistration/"
                                                                                                                  target="_blank"><span class="pull-right" />click here to proceed</a>
                                                                <div class="clearfix">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--CBT Registration-->
                                                </div>
                                                <br />
                                                <br />
                                            </div>
                                            <!--Post Registratio e-facilities-->
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <!--<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0"
                                    width="800" height="79">
                                    <param name="movie" value="images/jambCBTAdvert.swf">
                                    <param name="quality" value="high">
                                    <embed src="jmbflash.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                                        type="application/x-shockwave-flash" width="800" height="79"></embed></object>-->
                            </td>
                        </tr>
                        <tr>
                            <td class="footer">
                                <br />
                                <span style="font-weight: bold; font-size: 11.5px; color: #003300;">
                                    Copyright &copy
                                    2018. Joint Admissions & Matriculation Board
                                </span>
                            </td>
                            <!-- <td class="footer">
                                <span style="font-weight: bold; font-size: 11.5px; color: #003300;">Copyright &copy
                                    2014. Unified Tertiary Matriculation Examination: &nbsp;<span style="font-size: 12.5px;">Post
                                        Registration e-Facilities</span></span>
                            </td>-->
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

    </div>
   <script type='text/javascript' src='js/jquery.js'></script>
    <script type='text/javascript' src='js/jquery.simplemodal.js'></script>
    <script type='text/javascript' src='js/basic.js'></script>
    <script type="text/javaScript" src="ddaccordion.js"></script>
    <script>
        $("#clickreprintslip").click(function(){
                $(".showreprintslip").slideToggle(1000);
                
        }); 

        //tke exam
        $("#clicktakeexam").click(function(){
                $(".showtakeexam").slideToggle(1000);
                
        }); 
                //check results
        $("#clickcheckresult").click(function(){
                $(".checkresultregno").slideToggle(1000);
                
        }); 
      /*  $("#submitreprintslip").click(function(){
            var inputregno = $("#inputregno").val();
            if (inputregno=='') {
                $("#reprintsliprequired").html("<b style='color:red;'>*: Field can not be empty</b>");
                setTimeout(function(){
                $("#reprintsliprequired").fadeIn().html("*: Pin field required");
                },5000);
            }
            else if (inputregno!='') {
                $("#submitreprintslip").html("Please Wait..");
            $("#submitreprintslip").attr('disabled','disabled');
            setTimeout(function(){
                $("#submitreprintslip").html("Reprint Slip");
                $("#submitreprintslip").removeAttr('disabled','disabled');
                //$("#submitreprintslip").css("background-color","red");
            },5000);
            }
            
            return false;
        });*/
    </script>
    <script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>
</body>
</html>

