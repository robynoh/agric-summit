<?php session_start (); 
require_once("scripts/config.php"); ?>
<?php require_once("scripts/functions.php"); 

$result  =  ExecuteQuery("SELECT * FROM `exhibitors` order by id DESC ");

require_once("../class/class.php"); 

$connect =new connection(); 
$connect->connectTodatabase();
$connect->selectDatabase();

$msg="";

if(isset($_POST['sendmsg'])){
	
	if(empty($_POST['contacts'])){
		
		$msg=errorMsg("Please scroll down and select atleast one attendee to send SMS to.");
	
	}else{
		
		
		foreach($_POST['contacts'] as  $key => $val){
			
			
			
			$sql="SELECT * FROM `exhibitors` WHERE id='".$_POST['contacts'][$key]."'";
			$results=$connect->retrieve($sql);
			$rows=$connect->arrayFetch($results);
			foreach($rows as $row){
				
				 $response=$connect->CURLsendsmsresend($row['phone'],$row['fullname'],$_POST['message']);
				 
				

        $query="INSERT INTO `sentmsg` (`id`,`name`,`phone`,`msg`,`status`,`day`,`time`)
		VALUES (NULL,'".filter_var($row['fullname'], FILTER_SANITIZE_STRING)."','".filter_var($row['phone'], FILTER_SANITIZE_STRING)."','".filter_var($_POST['message'], FILTER_SANITIZE_STRING)."','".$response."','".date('d-m-Y')."','".date('H:i:s')."')";
	     $connect->insertion($query);			
				
			}
		
		header('location:sendsmsOK');
		}
		
		
		
		
	}
	
	
	
}


?>
<!DOCTYPE html>
<html>
    
    <head>
        <title>Attendance</title>
        <!-- Bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="assets/styles.css" rel="stylesheet" media="screen">
        <link href="assets/DT_bootstrap.css" rel="stylesheet" media="screen">
        <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="vendors/flot/excanvas.min.js"></script><![endif]-->
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script src="vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    
    <body>
       
               <?php  include("tools/admin_header.php");?>
       
<div class="container-fluid">
            <div class="row-fluid">
              
                      <?php  include("tools/leftbar.php");?>
                
                <!--/span-->
                <div class="span9" id="content">

                    
                    <div class="row-fluid">
                        <!-- block --><!-- /block -->
                  </div>

                    <div class="row-fluid">
                        <!-- block --><!-- /block -->
                  </div>

                    <div class="row-fluid">
                        <!-- block --><!-- /block -->
                  </div>
                    <div class="row-fluid">
                        <!-- block --><!-- /block -->
                  </div>

                    <div class="row-fluid">
                        <!-- block --><!-- /block -->
                 </div>

                     <div class="row-fluid">
                        <!-- block --><!-- /block -->
                 </div>

                     <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left"><b style="font-size:14px; color:#000">Send SMS</b></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                  
								   <?php echo $msg; ?>
								   
								    <form action="" id="form_sample_1" class="form-horizontal"  method="POST">
								   <table>
								   <tr>
								   <td>
								   
								    
								  
						<fieldset>
							
                            
					 
  							
  							<div class="control-group">
                                          <label class="control-label" for="textarea2">Message </label>
                                          <div class="controls">
										     <textarea required name="message" class="input w-full bg-gray-200 pl-16 py-6 mt-2 placeholder-theme-13 resize-none" rows="1" placeholder="Type in message here..." onkeydown="limitText(this.form.message,this.form.countdown,160);" onkeyup='limitText(this.form.message,this.form.countdown,160);' style="width: 600px; height: 200px"></textarea>
                                        
                                              </div>
                                        </div>
										
										<div class="control-group">
                                          
                                          <div class="controls">
                                           <button name="sendmsg" type="submit" class="btn btn-success"> Send</button> </div>
										   
										    
        <div class="controls" style="float:right">
        You have
        <input readonly type="text" name="countdown" size="3" value="160" style="width:15%"> chars left

</div>
                                        </div>
										
										
										  
  							
  							
  							
								   </td>
								   </tr>
								   
								   </table>
								   <hr/>
								  
                                  <h4>  <b>Contact</b></h4>
								  <br/>
                                    <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example2">
                                        <thead>
                                            <tr>
											<th class=""><input id='selectall' type="checkbox" class="input border mr-2" onClick="selectAll(this,'color')"  > Select all</th>
                
                                                <th>Name</th>
                                                <th>Phone</th>
												
                                               
                                                
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                         <?php while($rows=SqlArray($result)){  ?>
                                            <tr class="gradeU">
                                            <td> <input name="contacts[]" type="checkbox"   value="<?php echo $rows['id'];?>" /></td>
                                                <td><?php echo ucwords($rows['title']);?> <?php echo ucwords($rows['fullname']);?></td>
                                                <td><?php echo $rows['phone'];?></td>
												
                                               
                                                
                                                   </tr><?php ; }?>
                                        </tbody>
                                    </table>
									
									</form>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
            </div>
            <hr>
            <?php include('includes/footer.php');?>
        </div>
        <!--/.fluid-container-->
        
        
	 <script src="vendors/jquery-1.9.1.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="vendors/datatables/js/jquery.dataTables.min.js"></script>
        
	<script src="assets/scripts.js"></script>
      


        <script src="assets/scripts.js"></script>
        <script src="assets/DT_bootstrap.js"></script>
        <script type="text/javascript" src="vendors/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="assets/form-validation.js"></script>
        <script>
        function limitText(limitField, limitCount, limitNum) {
          if (limitField.value.length > limitNum) {
            limitField.value = limitField.value.substring(0, limitNum);
          } else {
            limitCount.value = limitNum - limitField.value.length;
          }
        }
		
		function selectAll(source) {
    checkboxes = document.getElementsByName('contacts[]');
    for(var i in checkboxes)
        checkboxes[i].checked = source.checked;
}
        </script>
    </body>

</html>