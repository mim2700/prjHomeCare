<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c"       uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="apple-touch-icon" sizes="57x57" href="favico/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="favico/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="favico/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="favico/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="favico/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="favico/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="favico/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="favico/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="favico/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="favico/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="favico/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="favico/favicon-16x16.png">

<link rel="manifest" href="favico/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="favico/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<script>

function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>
<script>

$(document).ready(function(){
  var flag = 0;
  $(document).scroll(function(){
  var stickyScroll = window.scrollY;
  if(stickyScroll > "120" && flag == "0")
  {
    $(".navbar").addClass('sticky-nav');
    flag = 1;
  }
  if(stickyScroll < "120" && flag == "1")
  {
   $(".navbar").removeClass('sticky-nav');
    flag = 0; 
  }
});
});
</script>
 
    <title>BoardandCareHomesUSA.com </title>
  </head>
  <body>
  <div class="row">
      <div class="col text-right px-sm-4 top-navcustom" ><ul><li>+1 (997) 149 7290</li>
      <c:choose>
      	<c:when test="${isUserLoggedIn}">
      		<li>${user.name}</li>
      		<li><a href="/logout"></a></li>
      	</c:when>
      	<c:when test='${user.role eq "m" }'>
           <li><a href='".base_url()."Client/listing_Add'><button type='button' class='btn btn-info'>Post Ad</button></a></li></ul>
      	</c:when>
      	<c:otherwise>
      		<li><a data-toggle='modal' data-target='#basicExampleModal' id='logine_model'>Log in</a></li>
          <li><a href='".base_url()."Signup'>Register</a></li>";
          <li><button type='button' class='btn btn-info' data-toggle='modal' data-target='#basicExampleModal' id='logine_model'>Post Ad</button></li></ul>
      	</c:otherwise>
      </c:choose>
      </div>
      <div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
          aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Log In</h5>
                
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body p-sm-0">
                  
                  <section class="form-elegant">
                  <?php echo validation_errors(); ?> 
                    <!--Form without header-->
                    <div class="card">
                    
                        <div class="card-body mx-4">
                    
                            <!--Header-->
                            <form method="post" action="<?php echo base_url('Signup/login')?>">  
                    
                            <!--Body-->
                            <div class="md-form mailpop">
                                <input type="text" id="Form-email1" class="form-control" name="username" Placeholder="User Name/ Email">
                                <span class="text-danger"><?php echo form_error('username'); ?></span>
                                <!--<label for="Form-email1">Your email</label>-->
                            </div>
                    
                            <div class="md-form mailpop">
                                <input type="password" id="Form-pass1" class="form-control" name="password" Placeholder="Password">
                                <span class="text-danger"><?php echo form_error('password'); ?></span>    
                            </div>
                             <div class="md-form ">
                                <button type="" class="fullWidth" style="background-color:#62a404;border: 1px solid #62a404; padding:10px; color:#fff;cursor: pointer;">SUBMIT</button>  

                            </div>
                          <?php  
                                  echo '<label class="text-danger">'.$this->session->flashdata("error").'</label>';  ?>
                                
</form>
                            <div class="text-center">
                                <p>Forgot Your Password <a href="#">Click Here</a></p>
                            </div>
                            
                            <div class="text-center">
                                <p>Don't have an account <a href="<?php echo base_url('Signup')?>">Create your account</a><br>Its take less then a minute</p>
                            </div>
                            
                                
                    
                        </div>
                    
                        <!--Footer-->
                       
                    
                    </div>
                    <!--/Form without header-->
                    
                    </section>
                
              </div>
              
            </div>
          </div>
        </div>
    <div class="container-fluid NoPadding">

    <!--Main Navigation-->
        <header>

         <nav class="navbar  navbar-expand-lg navbar  scrolling-navbar sticky">
            <a class="navbar-brand toplogo" href="<?php echo base_url('home')?>"><img src='<c:url value="/resources/images/logoTopHeader.png"/>'></a>
            <a class="navbar-brand scrollogo" href="#"><img src="<?php echo base_url(); ?>assest/images/logoTopHeaderScroll.png"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon">&#9776;</span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="#">WHO WE ARE <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">DIRECTORY</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">HOW ITS WORKS</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">FAQS</a>
                </li>
              </ul>
                  </div>
          </nav> 

        </header>
<!--Main Navigation-->
          
    </div>
  </div>