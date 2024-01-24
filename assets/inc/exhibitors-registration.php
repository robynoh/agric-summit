<?php

ob_start();
session_start();
require_once("../../class/class.php"); 

$connect =new connection(); 
$connect->connectTodatabase();
$connect->selectDatabase();
$message="";

if(isset($_POST['submit'])){
	
	
	while (list ($key, $val) = each ($_POST)) {
		//$checkout[$key] =  EscapeStrings($val);
		if ($val == "NULL")
			$_SESSION[$key] = NULL;
		else
			$_SESSION[$key] = $val;
		}
		
		
	
	 if($_POST['ex-type']=="single"){
		 
		 if(empty($_POST['exhibitor-name'])){
			 
			 header('location:'.$connect->url().'exhibitors-registration?status=exhibitor-error&type=single'); 
			 
		 }else{
		 
		 
		  $query="INSERT INTO `exhibitors` (`id`,`title`,`firstname`,`fullname`,`phone`,`sex`,`businessName`,`businessArea`,`address`,`state`,`country`)
		 VALUES (NULL,'".filter_var($_POST['title'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['firstname'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['name'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['phone'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['sex'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['businessName'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['businessArea'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['address'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['state'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['country'], FILTER_SANITIZE_STRING)."')";
	     if($connect->insertion($query)){
			 
			 $query2="INSERT INTO `exhibitors-name` (`id`,`business-name`,`phone`,`exhibitor-name`)
		 VALUES (NULL,'".filter_var($_POST['businessName'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['phone'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['exhibitor-name'], FILTER_SANITIZE_STRING)."')";
	    
			 $connect->insertion($query2);
						 
			$connect->CURLsendsms2($_POST['phone'],$_POST['name']);
			 header('location:'.$connect->url().'exhibitors-registration?status=success');
		 }
		 
		 } 
		 
		 
	 }
	  if($_POST['ex-type']=="multiple"){
		  
		  $exhibitors=$_POST['multiplename'];
		  
		  
		   if(!array_filter($exhibitors)){
			 
			 header('location:'.$connect->url().'exhibitors-registration?status=exhibitor-error&type=multiple'); 
			 
		  }else{
		  
		  
		 foreach($exhibitors as $exhibitor){ 
		  
		 if(!empty($exhibitor)){
		  
		$query2="INSERT INTO `exhibitors-name` (`id`,`business-name`,`phone`,`exhibitor-name`)
		 VALUES (NULL,'".filter_var($_POST['businessName'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['phone'], FILTER_SANITIZE_STRING)."','".filter_var($exhibitor, FILTER_SANITIZE_STRING)."')";
	     $connect->insertion($query2);
		  }
		  }
		      
				  
				$query="INSERT INTO `exhibitors` (`id`,`title`,`firstname`,`fullname`,`phone`,`sex`,`businessName`,`businessArea`,`address`,`state`,`country`)
		VALUES (NULL,'".filter_var($_POST['title'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['firstname'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['name'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['phone'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['sex'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['businessName'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['businessArea'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['address'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['state'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['country'], FILTER_SANITIZE_STRING)."')";
	          $connect->insertion($query);
						 
			//$connect->CURLsendsms2($_POST['phone'],$_POST['name']);
			header('location:'.$connect->url().'exhibitors-registration?status=success');
		 
		  
		  
		  
		 }  
		  
	  }
	 
	 
		 
		
	 
		 
}

?>