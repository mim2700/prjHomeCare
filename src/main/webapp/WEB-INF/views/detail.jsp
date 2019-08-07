<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c"       uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<!DOCTYPE html>

<html>
<head>
 	<%@include file="ui/cssJsConfig.jsp" %>
 	<%@include file="header.jsp" %>
</head>
        <div class="row">
                       <div class="col-md-12 care box-search px-sm-5  pt-5">
                           <?php foreach($detail as $value):?>
                           <span><?php echo $value->title?></span>
                           
                           <p><?php echo $value->state?> <?php echo $value->zip?></p>
                           
                         <p class="pt-3" style="font-size: 22px;"><?php echo $value->description?></p>
                         
                          
                    </div>
                    <div class="col p-0">
                        <img src="<?php echo base_url(); ?>assest/images/manor.png" style="width:100%;">
                    </div>
        </div>
        <div class="row border-bottom lighten-3">
           <div class="col col mx-sm-5 px-sm-5 mt-sm-2">
            
                <p style="font-size:26px; color:#000;">There Are 35 Residential Care Elderly Near 95618</p>
           </div>
        </div>
<div class=" px-sm-5 mt-sm-5">
    <div class="row">
        <div class="col-md-2  px-sm-0  ml-sm-3">
            <div class="LeftSearch">
                <img src="<?php echo base_url(); ?>assest/images/map.png" style="width:100%;">
                    <div class="col-md-12 NoPadding">
                            <div class="location">
                                <p class="text-left">Location</p>
                                
                                <ul>
                                    <li><img src="<?php echo base_url(); ?>assest/images/locater.png"><?php echo $value->state?> <br>
                                    <?php echo $value->zip?></li>
                                    <li style="color: #004f7a;"><img src="<?php echo base_url(); ?>assest/images/phone1.png"><?php echo $value->telephone?></li>
                                    <li style="color: #004f7a;"><img src="<?php echo base_url(); ?>assest/images/mail.png"><?php echo $value->email?></li>
                                </ul>
                            </div>
                            <div class="location quick">
                                <p class="text-left">Quick Information</p>
                                
                                <ul>
                                    <li>Faciltiy Status: <p style="color: #004f7a;font-size: 16px;font-weight: 400;"><?php echo $value->facility_status?></p> </li>
                                    <li >Facility Capacity : <?php echo $value->facility_capacity?></li>
                                    <li >Inspaction Visit  : <?php echo $value->inspection_visit?></li>
                                    <li >Licensed First Date : <?php echo $value->licensed_first_date?></li>
                                    <li>Citation Number:<br><?php echo $value->citation_number?></li>
                                    
                                </ul>
                            </div>
                       </div>
            </div>
        </div>
                
        <div class=" col-sm-9 ">
        	<div class=" Info row  border-bottom lighten-3 mb-3">
            	<div class="col text-left p-sm-0 box-search"><h1>WHY SEARCH ON BOARDANDCAREHOMESUSA.COME</h1><hr></div>
                <!--<div class="col text-center"><p class="newca">New York, CA 90027</p></div>-->
            </div>
            
            <div class="col-sm p-sm-0 mt-sm-5">
            	<div class="Listpartr">
            	    <div class="row  border-bottom lighten-3 ">
                    	<div class="col pl-sm-0 pr-sm-5 mr-sm-5">
                    	  <p class=" pr-sm-5 mr-sm-5">Weather you prefer modren assisted living communities or the comfort of residental care homes, you'll find real senior living reviews you can trust on SeniorAdvisor.com Thousand of families have shared their unbaised reviews of alzhiemer's care homes, retirement  communities, and more. Add your own review of senior housing in your  area and senior care seekers around the country find the best care for their aging loved ones. </p>  
                    	</div>
                    </div>
                 </div>
            </div>
        
                 
            <div class="col-sm p-sm-0 mt-sm-3 ">
                <div class="Listpartr security">
                	   <div class="row  border-bottom lighten-3 ">
                    	<div class="col pl-sm-0 pr-sm-5 mr-sm-5 mb-sm-5">
                    	    <p  style="font-size:32px">Features</p>
                        <ul>
                        <?php
                        $test= json_decode($value->features);
                        $array =  explode(',', $test);
                         foreach($array as $new) {
                               
                    	   echo "<li style='width:25%;float:left'><img src='".base_url()."assest/images/circle.png'>$new</li>";
                            }?>
                    	  </ul>
                    	  
                    	  <!--<ul>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">Created Card Accepted</li>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">Tour Available</li>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">CCTV Security</li>-->
                    	  <!--</ul>-->
                    	</div>
                     </div>
                 </div>
            </div>
        
        
            <div class="col-sm p-sm-0 mt-sm-3 ">
                	<div class="Listpartr security">
                	    <div class="row  border-bottom lighten-3 ">
                    	<div class="col pl-sm-0 pr-sm-5 mr-sm-0 mb-sm-5">
                    	    <p  style="font-size:32px">Affilations / Recognitions</p>
                    	  <ul>
                    	      <?php
                    	       $test= json_decode($value->affilations);
                              $array =  explode(',', $test);
                         foreach($array as $new) {
                               
                    	   echo "<li style='width:33.33%;float:left'><img src='".base_url()."assest/images/circle.png'>$new</li>";
                            }?>
                    	  </ul>
                    	  
                    	  
                    	  <!--<ul>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">Created Card Accepted</li>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">Tour Available</li>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">CCTV Security</li>-->
                    	  <!--</ul>-->
                    	</div>
                     </div>
                 </div>
            </div>
        
        
            <div class="col-sm p-sm-0 mt-sm-3 ">
                	<div class="Listpartr security">
                	    <div class="row  border-bottom lighten-3 ">
                    	<div class="col pl-sm-0 pr-sm-5 mr-sm-5 mb-sm-5">
                    	    <p  style="font-size:32px">Services Offered:</p>
                    	  <ul>
                    	         <?php 
                    	          $test= json_decode($value->services_offered);
                                 $array =  explode(',', $test);
                         foreach($array as $new) {
                               
                    	   echo "<li style='width:25%;float:left'><img src='".base_url()."assest/images/circle.png'>$new</li>";
                            }?>
                    	  </ul>
                    	  
                    	  
                    	  <!--<ul>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">Transportaion</li>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">Errands/Shopping</li>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">Medication Reminders</li>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">Respite Care </li>-->
                    	  <!--</ul>-->
                    	  <!-- <ul>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">Post-Op Care</li>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">Padiatric Care</li>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">Alzheimer's Care</li>-->
                    	  <!--    <li><img src="<?php echo base_url(); ?>assest/images/circle.png">End of Life Care</li>-->
                    	  <!--</ul>-->
                    	</div>
                     </div>
                 </div>
            </div>
        
        
            <div class="col-sm p-sm-0 mt-sm-3 ">
                	<div class="Listpartr security">
                	    <div class="row  border-bottom lighten-3 ">
                    	<div class="col pl-sm-0 pr-sm-5 mr-sm-5 mb-sm-5">
                    	    <p  style="font-size:32px">Pricing at SYNERGY Home Care - Manhattan/ New York,NY</p>
                    	    <div class="col-md-6 col-sm-12">
                    	  <div class="table-responsive">
                              <table class="table">
                                <thead>
                                  <tr>
                                    <th scope="col">Room Type</th>
                                    <th scope="col" style=" text-align: center;">Monthly Range* (USD)</th>
                                    
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    
                                    <td><?php if($value->beds !=0)
                                        {
                                            echo $value->beds;
                                        }
                                        else
                                        { ?>
                                            0
                                       <?php }
                                        ?> Bedroom</td>
                                                        <td style=" text-align: center;"><?php if($value->price !=0)
                                                            {
                                                                echo $value->price."$";
                                                            }
                                                            else
                                                            { ?>
                                                                0$
                                                           <?php }
                                        ?></td>
                                    
                                  </tr>
                                  <tr>
                                    
                                    <td>Private</td>
                                    <td style=" text-align: center;"><?php if($value->private_price !=0)
                                        {
                                            echo $value->private_price."$";
                                        }
                                        else
                                        { ?>
                                            0$
                                       <?php }
                                         ?></td>
                                    
                                  </tr>
                                  <tr>
                                    
                                    <td>Semi Private</td>
                                    <td style=" text-align: center;"><?php if($value->semi_private !=0)
                                        {
                                            echo $value->semi_private."$";
                                        }
                                        else
                                        { ?>
                                            0$
                                       <?php }
                                     ?></td>
                                    
                                  </tr>
                                  <tr><td class="pb-sm-0"></td><td class="pb-sm-0"></td></tr>
                                </tbody>
                              </table>
                              <p style="font-size:12px;color:#c6c6c6;">Our apologies.Pricing is currently unavalalible for this particular community </p>
                            </div> 
                            </div>
                    	</div>
                     </div>
                 </div>
            </div>
                 
                                        
             <div class="col-sm p-sm-0 mt-sm-3 ">
                	<div class="Listpartr security-1">
                        	    <div class="row  border-bottom lighten-3 ">
                            	<div class="col pl-sm-0 pr-sm-5 mr-sm-5 mb-sm-5">
                            	   <p  style="font-size:32px">Services Offered:</p>
                            	   <p><?php echo $value->service_description?></p>
                            
                            	<!--    <p>The Featurs and amenities that are displayed onthis page contain marketing information provided by community.<br>A place for elders has not confirmed the completeness of the provided information, and cannot gurantee its accuracy.<br>To conduct a complete investigation, seniors and their families should:</p>-->
                            	    
                            	  
                            	  
                            	<!--  <ul style="margin-top:20px;">-->
                            	<!--      <li>Tour Any listed location to confirm the accuracy of the community description;</li>-->
                            	<!--      <li>Confirm that community offers sevices that are required for the senior's specific needs and budget; and   </li>-->
                            	<!--      <li>check <a href="#">additional licencing and the audit information</a></li>-->
                            	      
                            	      
                            	<!--  </ul>-->
                            	<!--  <p style="margin-top:20px">If You beacame aware of any information that should be updated or noted, please contact <a href="#">boardandhomecareUSA.COM</a>  </p>-->
                            	<!--</div>-->
                             </div>
                         </div>
                    </div>                                
            </div> 
            
            
        </div>
    </div>
</div>
<?php endforeach;?>

<?php include('layout/footer.php')?>
                 
   <style>
       .collapse.in {
    display: block;
    visibility: visible;
}
.hotel_price_box_inner2 {
    margin-top: 2%;
    width: 100%;
    padding: 0 3%;
}
.hotel_price_box .hotel_price_box_inner input[type="text"] {
    WIDTH: 45%;
    margin-right: 9%;
    padding: 4%;
    border: 1px solid #e2e2e2;
    margin-bottom: 4%;
}
.ui-slider .ui-slider-range {
    position: absolute;
    z-index: 1;
    font-size: .7em;
    display: block;
    border: 0;
    background-position: 0 0;
}

.ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default, .ui-button, html .ui-button.ui-state-disabled:hover, html .ui-button.ui-state-disabled:active, hover {
    border: 1px solid #c5c5c5;
    background: #f05927;
    font-weight: normal;
    color: #454545;
    border-radius: 8px;
}
.ui-widget.ui-widget-content {
    border: 1px solid #c5c5c5;
}
.SecondaryButton img {
    margin-right: 10px;
}
li {
    list-style: none;
}
   </style>
    
  </body>

</html>
