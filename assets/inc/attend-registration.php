<?php

ob_start();
session_start();
require_once("../../class/class.php"); 

$connect =new connection(); 
$connect->connectTodatabase();
$connect->selectDatabase();
$message="";

if(isset($_POST['submit'])){
	
	 
		 
		 $query="INSERT INTO `attend` (`id`,`title`,`firstname`,`name`,`sex`,`phone`,`work`,`position`,`reason`,`address`,`state`,`country`)
		 VALUES (NULL,'".filter_var($_POST['title'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['firstname'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['name'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['sex'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['phone'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['work'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['position'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['reason'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['address'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['state'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['country'], FILTER_SANITIZE_STRING)."')";
	     if($connect->insertion($query)){
			$connect->CURLsendsms4($_POST['phone'],$_POST['name']);
			 header('location:'.$connect->url().'attend?status=success');
		 }
		 
	 
		 
}

?>