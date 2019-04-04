<?php
session_start();
if (!$_SESSION['SESS_MEMBER_ADMIN']){
header('location:../index.php');
}?>