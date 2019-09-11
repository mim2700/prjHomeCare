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

	<script type="text/javascript" class="init">
	$(function() { 
		$(document).ready(function() {
			$('#facilityTable').DataTable();
		} );
	});
	</script>

</head>

<body>
    <div class="row">
               <div class="col-md-12 box-search pr-sm-5 mx-sm-5 pt-5">
                   <span> Residential Care Elderly Near <c:out value="${stateZip}"/>  </span>
                   <hr>
                  <p class="pt-3 border-top lighten-3" style="font-size: 22px;"><spring:message code="prop.home.care.content.01"/></p>
                 
                 <p class="pt-3 border-top lighten-3" style="font-size: 22px;">Care homes, also known as adult family homes,board and care homes, residential care or personal care homes offer personalized service to small groups of adults. These residential homes provide lodging, meal service and assistance with daily living activities.  </p>
                  
                  <p class="mx-sm-5 px-sm-5 mt-sm-5" style="font-size: 22px;">If you are a family member is finding daily activies increasingly more challenging.there are several senior living communities that offers quality care assisted living service in the New York city appriciate
                  the companionship they receive the safe,carefree,friendly and stimulating environment. Don't postpone your enjoyment of life.Choose assisted living community that's right for you.    </p>
            </div>
    </div>
    <div class="row border-bottom lighten-3">
    <div class="col mx-sm-5 pr-sm-5 mt-sm-5">
        
            <p style="font-size:26px; color:#000;">There Are ${numberOfFacilities} Residential Care Elderly Near <c:out value="${stateZip}"/> </p>
            </div>
            </div>
            <div class="col mx-sm-5 pr-sm-5 mt-sm-5">
            <div class="row">
            <div class="col  pr-sm-5  pl-0">
                
                
            <div class="LeftSearch">
                <p class="border-bottom lighten-3">Search</p>
            <div class="col-md-12 NoPadding">
	
               <form method="post" action="<?php echo base_url('home/filter') ?>">

			          <div class="">
			         		<div class="form-group">
			         		    <label for="rooms">Where</label>
			                <input type="text" name="where" class="form-control" id="sel1" required />
			              	</div>
			
			          </div>
			           
			             
			         <div class="">
			             <div class="form-group">
			                 <label for="rooms">Beds</label>
			                <select name="beds" class="browser-default custom-select" required>
			                  <option selected>No. of beds</option>
			                  <option value="1">One</option>
			                  <option value="2">Two</option>
			                  <option value="23">Three</option>
			                </select>
			              </div>
			          </div>
			          
			          <div class="">
			          <button type="" class="fullWidth" style="background-color:#62a404;border: 1px solid #62a404; padding:8px;margin:5px 0px;"><a href="#">Search</a></button>         
			      		</div>
			      
			 </form>
      
      </div>
      
      </div>
      </div>
                
           
            <div class=" col-sm-9 ">
        	<div class=" Info row border-bottom lighten-3 mb-3">
        		<div class="col-sm-3 p-sm-0"><img src='<c:url value="resources/images/bchdefaultpic.jpg"/>' alt="BoradandHomeCareUSA"style="width:50%;"></div>
            	<div class="col text-left p-sm-0"><p>${numberOfFacilities} Results Found</p></div>
                <div class="col text-right"><p class="newca"><c:url value="${stateZip}"/></p></div>
            </div>
     <c:choose>
       <c:when test="${not empty numberOfFacilities}">     
           <table id="facilityTable" class="table table-striped table-bordered display" style="width:100%">
           		<thead>
           			<tr>
           				<th>Title</th>
           				<th>City</th>
           				<th>Status</th>
           				<th>Details</th>
           			</tr>
           		</thead>
           		<c:forEach items="${facilities}" var="facility">
           			<tr>	
           				<td><c:out value="${facility.title}"/></td>
           				<td><c:out value="${facility.city}"/></td>
           				<td><c:out value="${facility.facilityStatus}"/></td>
           				<td>
                            <div class="SecondaryButton">
                            	<a 	data-toggle='modal' 
                            		data-target='#contactmodal<c:out value="${facility.id}"/>'
                            		style="width:auto;padding: 4px 12px 4px 5px;"
									<c:if test="${not isUserLoggedIn}">
                            		 onclick='myFunction(event)' 
                            		</c:if> 
                            	>
                            		<img src='<c:url value="/resources/images/phone.png"/>'>
                            		Contact
                            	</a>
                            </div>
                            <div class="SecondaryButton">
                            		<a  data-toggle='modal' 
                            			data-target='#Pricemodal<c:out value="${facility.id}"/>' 
											<c:if test="${not isUserLoggedIn}">
		                            		 onclick='myFunction(event)' 
		                            		</c:if> 
                             				style="width:auto;padding: 4px 12px 4px 5px;"
                            		>
                            			<img src='<c:url value="/resources/images/tag.png"/>'>
                            			Pricing
                            		</a>
                           </div>
                         	<div class="PrimaryButton">
                         			<a  
                         				<c:if test="${not isUserLoggedIn}">
		                            		 onclick='myFunction(event)' 
		                            	</c:if> 
                         				  style="width:auto;"
                         			>
                         					Detail
                         			</a>
                         	</div>           				
 					<div class=" Clearfix">
							<div class="icons" style="color: green;">
								
                                    <i class="fas fa-globe"> Website </i>
                                    <i class="fas fa-file-word">Brocher</i>
                                   	<i class="fas fa-building">Floor Plan</i>
                                    <i class="fas fa-calendar-alt">Event</i>
                                    <i class="fas fa-image">Photo Galary</i>
                                
                            </div>
                            
						</td>
           			</tr>
           		</c:forEach>
           </table>
       </c:when>
       	<c:otherwise>
                 <div class="col-sm p-sm-3 mt-sm-4 grey lighten-3">
       			<div class="Listpartr">
       	    		<div class="row">
           				<div class="col-sm-3 NoPadding rounded mb-0">
           	    			No results found
           	    		</div>
           	    	</div>
           	   </div>
           	 </div>            	
       	</c:otherwise>       
       </c:choose>
           

        </div> 
        
        
        </div>
        </div>
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
.Listpartr .SecondaryButton a {
    color: #c6c6c6;
    border: 1px solid;
}
.icons {
    margin-top: 30px;
}

   </style>
   

            	
  
    <c:choose>
            	<c:when test="${not empty numberOfFacilities}">
            		<c:forEach items="${facilities}" var="facility">

<div class="modal fade" id='contactmodal<c:out value="${facility.id}"/>' tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
          aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"> Contact us</h5>
                
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body p-sm-0">
                  
                  <section class="form-elegant">
                      <div class="card">
              <!-- Card content -->
              <div class="card-body">
          <p>
          			Contact us now, call 
          				<c:if test="${not empty telephone}">
          					<c:out value="${telephone}"/>
          				</c:if>
          </p>

              </div>
            
            </div>
                 
                   </section>
                
              </div>
              
            </div>
          </div>
</div>   
<div class="modal fade" id='Pricemodal<c:out value="${facility.id}"/>' tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
          aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"> Price</h5>
                
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body p-sm-0">
                  
                  <section class="form-elegant">
                      <div class="card">
              <!-- Card content -->
              <div class="card-body">
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
                                <td>
                               		<c:out value="${facility.bed}"/>
								 Bedroom</td>
                                <td style=" text-align: center;">
                                	<c:choose>
                                		<c:when test="${not empty facility.price}">
                                			 <c:out value="${facility.price}"/>
                                		</c:when>
                                		<c:otherwise>0</c:otherwise>
                                	</c:choose>
 								</td>
                              </tr>
                              <tr>
                                <td>Private</td>
                                <td style=" text-align: center;">
                                	<c:out value="${facility.privatePrice}"/>
								</td>
                              </tr>
                             
                              <tr>
                                <td>Semi Private</td>
                                <td style=" text-align: center;">
									<c:out value="${facility.semiPrivate}"/>
								</td>
                            
                              </tr>
                              <tr><td class="pb-sm-0"></td><td class="pb-sm-0"></td></tr>
                            </tbody>
                          </table>

              </div>
  
            </div>
                 
                   </section>
                
              </div>
              
            </div>
          </div>
</div>  

      </c:forEach>
    </c:when>
	<c:otherwise>
	</c:otherwise>
</c:choose> 



</body>

</html>


<script>
function myFunction(e) {
e.preventDefault();
e.stopPropagation();
 var elan = document.getElementById("logine_model");
 elan.click();
}
</script>