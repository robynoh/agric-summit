<?php
ob_start();
require_once("scripts/config.php");
require_once("scripts/functions.php");
require_once('classes/class.php');

$connect =new connection();
 	$connect->connectTodatabase();
	$connect->selectDatabase();

//  Developed by Robinson Agaga 
//  This notice MUST stay intact for legal use




if(isset($_GET['id']) && $_GET['id'] != ""){
	if (ExecuteQuery("delete from attend where id='".$_GET['id']."'"));
	
	header("location:./attenders?status=delete"); 
	exit;
}

if(isset($_GET['id2']) && $_GET['id2'] != ""){
	if (ExecuteQuery("delete from exhibitors where id='".$_GET['id2']."'"));
	
	header("location:./exhibits?status=delete"); 
	exit;
}


if(isset($_GET['acc_id']) && $_GET['acc_id'] != ""){
	if (ExecuteQuery("delete from account where account_id='".$_GET['acc_id']."'"));
	
	header("location:./users?status=delete"); 
	exit;
}

?>