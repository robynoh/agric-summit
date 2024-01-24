<?php 
ob_start();
session_start ();
require_once("scripts/config.php"); 
require_once("scripts/functions.php");
 require_once("../class/class.php");

$msg="";
$connect =new connection();
$news =new news();
 	$connect->connectTodatabase();
	$connect->selectDatabase();
	
	$result  =  ExecuteQuery("SELECT * FROM `sentmsg` order by id DESC");

 ?>



<?php  
if(isset($_POST['sendSMS'])){
	
	if(empty($_POST['msg'])){
		
		$msg=errorMsg("Please select an SMS to resend.");
	
	}
		else{
			foreach($_POST['msg'] as  $key => $val){
				
			$rsms= "select * from sentmsg where id='".$_POST['msg'][$key]."'  ";
	$result=$connect->retrieve($rsms);
	$rows=$connect->arrayFetch($result);
	 foreach($rows as $row){
		 
		  $response=$connect->CURLsendsmsresend($row['phone'],$row['name'],$row['msg']);
				

         $query="INSERT INTO `sentmsg` (`id`,`name`,`phone`,`msg`,`status`,`day`,`time`)
		 VALUES (NULL,'".filter_var($row['name'], FILTER_SANITIZE_STRING)."','".filter_var($row['phone'], FILTER_SANITIZE_STRING)."','".filter_var($row['msg'], FILTER_SANITIZE_STRING)."','".$response."','".date('d-m-Y')."','".date('H:i:s')."')";
	     $connect->insertion($query);	
		 
	 }	
				
		
		
		}
		
		header('location: message_history?status=sent');
		}
	
	
	}
	
	if(isset($_POST['de-activate'])){
	
	if(empty($_POST['msg'])){
		
		$msg=errorMsg("Please select a News to de-activate.");
	
	}
		else{
			foreach($_POST['msg'] as  $key => $val){
		
		ExecuteQuery("delete from sentmsg where id='".$_POST['msg'][$key]."'");
		header('location: message_history?status=deleted');
		}
		}
	
	
	}
	
	
	
	
 ?>
<!DOCTYPE html>
<html>
    
    <head>
        <title>News List</title>
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
    
    <body style="font-size:12px">
        <div class="navbar navbar-fixed-top">
               <?php  include("tools/admin_header.php");?>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
              
                      <?php  include("tools/leftbar.php");?>
                
                <!--/span-->
                <div class="span9" id="content" style="width:80%">

                    
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
                        <!-- block --><form method="post" action="">
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left" style="font-weight:bold;color:#000;font-size:14px"> Message History</div>
                            </div>
							<?php if(isset($_GET['status']) && $_GET['status']=="deleted"){?>
							<?php echo successMsg("Record deleted succesfully.");?>
							<?php } ?>
							<?php echo $msg;?>
                            <div class="block-content collapse in">
                                <div class="span12">
                                   <div class="table-toolbar">
                                      <div class="btn-group">
                                         
                                       <button name="sendSMS" class="btn btn-success " >Resend SMS </button><i class="icon-plus icon-white"></i>
									   <button name="de-activate" class="btn btn-danger">Delete</button>
                                      </div>
									 
									
                                     
                                   </div>
                                    
                                    <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example2">
                                        <thead>
                                            <tr>
                                           <th class=""><input id='selectall' type="checkbox"  onClick="selectAll(this,'color')"  > Select all</th>
                                                <th>SMS</th>
                                                <th>Date Sent</th>
												
                                                <th>Status</th>
                                             
                                                </tr>
                                        </thead>
                                        <tbody>
                                <?php  
								while($rows=SqlArray($result)){?>
                                 
                                 <tr class="gradeU">
                                            <td><input name="msg[]" type="checkbox" value="<?php echo $rows['id'];?>"></td>
                                                <td><b><?php echo ucwords($rows['name']);?></b><br/>
                                               <?php echo strip_tags( substr( $rows['msg'],0,120)) ;?>...</td>
                                                <td><?php echo $rows['day'];?> <b style="color:#ff0000"><?php echo $rows['time'];?></b></td>
												
                                                <td><?php if($rows['status']==200){?><span class="badge badge-success pull-right">Sent</em></span><?php }else{?><span class="badge badge-danger pull-right">Failed</span><?php }?></td>
                                                 
                                              </tr>
									 
								<?php }?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- /block --></form>
                    </div>
                </div>
            </div>
            <hr>
             <?php include('includes/footer.php');?>
        </div>
        <!--/.fluid-container-->
        
         <link href="vendors/datepicker.css" rel="stylesheet" media="screen">
        <link href="vendors/uniform.default.css" rel="stylesheet" media="screen">
        <link href="vendors/chosen.min.css" rel="stylesheet" media="screen">

        <link href="vendors/wysiwyg/bootstrap-wysihtml5.css" rel="stylesheet" media="screen">

        <script src="vendors/jquery-1.9.1.js"></script>
       <!-- <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="vendors/jquery.uniform.min.js"></script>
        <script src="vendors/chosen.jquery.min.js"></script>
        <script src="vendors/bootstrap-datepicker.js"></script>

        <script src="vendors/wysiwyg/wysihtml5-0.3.0.js"></script>
        <script src="vendors/wysiwyg/bootstrap-wysihtml5.js"></script>

        <script src="vendors/wizard/jquery.bootstrap.wizard.min.js"></script>
-->
	<script type="text/javascript" src="vendors/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="assets/form-validation.js"></script>
        
	<script src="assets/scripts.js"></script>
        <script>

	jQuery(document).ready(function() {   
	   FormValidation.init();
	});
	

        $(function() {
            $(".datepicker").datepicker();
            $(".uniform_on").uniform();
            $(".chzn-select").chosen();
            $('.textarea').wysihtml5();

            $('#rootwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
                var $total = navigation.find('li').length;
                var $current = index+1;
                var $percent = ($current/$total) * 100;
                $('#rootwizard').find('.bar').css({width:$percent+'%'});
                // If it's the last tab then hide the last button and show the finish instead
                if($current >= $total) {
                    $('#rootwizard').find('.pager .next').hide();
                    $('#rootwizard').find('.pager .finish').show();
                    $('#rootwizard').find('.pager .finish').removeClass('disabled');
                } else {
                    $('#rootwizard').find('.pager .next').show();
                    $('#rootwizard').find('.pager .finish').hide();
                }
            }});
            $('#rootwizard .finish').click(function() {
                alert('Finished!, Starting over!');
                $('#rootwizard').find("a[href*='tab1']").trigger('click');
            });
        });
		
		
		function link(){
			
			window.location="http://newgate_new/sims/admin/addNews";
			
		}
		
		function selectAll(source) {
    checkboxes = document.getElementsByName('msg[]');
    for(var i in checkboxes)
        checkboxes[i].checked = source.checked;
}
        </script>
        

        <script src="vendors/jquery-1.9.1.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="vendors/datatables/js/jquery.dataTables.min.js"></script>


        <script src="assets/scripts.js"></script>
        <script src="assets/DT_bootstrap.js"></script>
        <script type="text/javascript" src="vendors/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="assets/form-validation.js"></script>
       
    </body>

</html>