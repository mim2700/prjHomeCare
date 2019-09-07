<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c"       uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html>
<head>
 	<%@include file="ui/cssJsConfig.jsp" %>
 	<%@include file="header.jsp" %>
</head>
<body>
<div class="row">
	<div class="col-md-12 banner-top">
		<p>FIND THE SENIOR LIVING NEAR YOU</p>
		<span>Its just a few click away</span>
		<div class="container">
			<div class="col-md-12 input-section pr-sm-0">
				<form:form action="searchAction" modelAttribute="searchModel" method="post">
					<div class="row">
							<div class="col-md-3 col-sm-6 pl-sm-0 pr-sm-0">
							</div>
							<div class="col-md-5 col-sm-12 pl-sm-0 pr-sm-0">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text text-area">Where </span>
									</div>
									<form:input path="stateZip" cssClass="form-control" placeholder=" City Or Zip Code"/>
								</div>
							</div>
							<div class="col-md-2 pl-sm-0 pr-sm-0">
								<input type="submit" value="SEARCH" class="btn btn-success" />
							</div>

					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>


<div class="row help">
	<div class="container">
		<div class="row">
			<div class="col-md-5 text-right p-0">
				<p>Contact for any help</p>
			</div>
			<div class="col-md-1 col-sm-0 p-0"></div>
			<div class="col-md-6 text-left p-0">
				<p>
					<a href="#"><img th:src="@{/images/icoph.png}"> +1
						(997) 149 7290</a>
				</p>
			</div>
		</div>
	</div>
</div>

<!-- <div class="row"> -->
<div class="col-md-12 pt-3">
	<div class="row p-sm-5">

		<div class="col-md-8 px-sm-5">
			<div class="box-search p-sm-5">
				<span>WHY SEARCH ON BOARDANDCAREHOMEUSA.COM</span>
				<hr>
				<p class=" pt-sm-5 border-top  lighten-3">Wheather you prefer
					assisted living Communities or the comfort of residental care
					homes,you'll find real senior living reviews you can trust on
					senior Advisor.com. Thounsand of families have shared their
					unbaised reviews of alzeimer's care homes,nursing homes, retirment
					communities,and more. Add your own review of senior housing in your
					area and help senior care seekers around the country find the best
					care for their aging loved once.</p>
				<div class=" col pl-0">
					<div class="row">
						<p class="col-12 pl-0" style="font-size: 30px;">Why Choose Us?</p>
						<div class="row">
							<div class="col">
								<ul class="insured">
									<li><i class="fa fa-check" aria-hidden="true"></i> Years
										Of Experience</li>
									<li><i class="fa fa-check" aria-hidden="true"></i> fully
										insured</li>
									<li><i class="fa fa-check" aria-hidden="true"></i> Cost
										Control Expert</li>
									<li><i class="fa fa-check" aria-hidden="true"></i> 100%
										Staisfaction</li>
								</ul>
							</div>
							<div class="col">
								<ul class="insured">
									<li><i class="fa fa-check" aria-hidden="true"></i>
										Affordable Pricing</li>
									<li><i class="fa fa-check" aria-hidden="true"></i> Free
										Consultaion</li>
									<li><i class="fa fa-check" aria-hidden="true"></i>
										Satisfied Customers</li>
									<li><i class="fa fa-check" aria-hidden="true"></i> Project
										Management</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 p-sm-5 mt-sm-5 ">
			<img class="mt-5  project"
				th:src="@{/images/pic.jpg}"
				stye="width:100%;">
		</div>
	</div>


</div>

</div>


<div class="row">

	<div class="col-sm p-sm-0 verfied">
		<div class="verfied-inner">
<%-- 			<img src='<c:url value="/resources/images/ico.png"/>'> --%>
		</div>
		<span>100% verified</span>
		<p>Dedicated local advisor</p>
	</div>

	<div class="col-sm p-sm-0 value">
		<div class="value-inner">
<%-- 			<img src='<c:url value="/resources/images/ico.png"/>'> --%>
		</div>
		<span>Thoroughly Evaluated</span>
		<p>Hand -picked list of communities to match your needs</p>
	</div>

	<div class="col-sm p-sm-0 train">
		<div class="train-inner">
<%-- 			<img src='<c:url value="/resources/images/iverified.png"/>'> --%>
		</div>
		<span>Constantly Trained</span>
		<p>Full details and pricing</p>
	</div>

</div>
<div class="container">
	<div class="row">
		<div class="col m-sm-5 p-sm-5">
			<p class="talk">Talk to us today about how we can help you take
				care of your medical needs or the needs of your loved ones.</p>
			<p class="talk">
				<a href="#">+1 (997) 149-7290</a>
			</p>
		</div>
	</div>
</div>

<div class="row best px-sm-5">
	<div class="col px-sm-5 ">
		<div class="row">
			<div class="col">
				<p class="text-left">
					BoardandCareHomesUSA.com Is The <span class="green">Best way</span><br>To<span
						class="green"> Find best facility Center</span>
				</p>
			</div>
			<div class="col">
				<p class="text-right">
					<button type="button" class="btn btn-success">Start Now</button>
				</p>
			</div>
		</div>
	</div>
</div>
<div class="row search-section">
	<h3 class="text-center col-12 py-sm-5 pt-3">SEARCH FACILITY COUNTY</h3>
	<!--<div class="col-12 text-center "><button class="btn indigo darken-4 mr-sm-5 ">RESIDENTIAL CARE ELDERLY</button><input type="text" class="text_input" placeholder="RCFE-CONTINUING CARE RETIREMENT COMMUNITY" /></div>-->
	<!-- Nav tabs -->
	<div class="container">
		<div class="row">
			<div class="col-12 ">
				<ul class="nav nav-tabs md-tabs nav-justified  kern" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#panel555" role="tab">RESIDENTIAL CARE
							ELDERLY</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#panel666" role="tab">RCFE-CONTINUING CARE RETIREMENT
							COMMUNITY</a></li>
				</ul>
				<!-- Nav tabs -->

				<!-- Tab panels -->
				<div class="tab-content">

					<!-- Panel 1 -->
					<div class="tab-pane fade in show active" id="panel555"
						role="tabpanel">

						<!-- Nav tabs -->
						<table class="table-custom container">
							<tr>
								<td><a href="#">SAN DIEGO</a></td>
								<td><a href="#">LOS ANGELES</a></td>
								<td><a href="#">LOS ANGELES</a></td>
								<td><a href="#">FRESNO</a></td>
							</tr>
							<tr>
								<td><a href="#">MARIN</a></td>
								<td><a href="#">LOS ANGELES</a></td>
								<td><a href="#">RIVERSIDE</a></td>
								<td><a href="#">MONTEREY</a></td>
							</tr>
							<tr>
								<td><a href="#">RIVERSIDE</a></td>
								<td><a href="#">VENTURA</a></td>
								<td><a href="#">KERN</a></td>
								<td><a href="#">LOS ANGELES</a></td>
							</tr>
							<tr>
								<td><a href="#">LOS ANGELES</a></td>
								<td><a href="#">SAN DIEGO</a></td>
								<td><a href="#">LOS ANGELES</a></td>
								<td><a href="#">ORANGE</a></td>

							</tr>
							<tr>
								<td><a href="#">LOS ANGELES</a></td>
								<td><a href="#">SAN DIEGO</a></td>
								<td><a href="#">ORANGE</a></td>
								<td><a href="#">ALAMEDA</a></td>
							</tr>
							<tr>
								<td><a href="#">SANTA BARBARA</a></td>
								<td><a href="#">SONOMA</a></td>
								<td><a href="#">ORANGE</a></td>
								<td><a href="#">SAN FRANCISCO</a></td>
							</tr>
						</table>
						<!-- Nav tabs -->

					</div>
					<!-- Panel 1 -->

					<!-- Panel 2 -->
					<div class="tab-pane fade" id="panel666" role="tabpanel">

						<table class="table-custom container">
							<tr>
								<td><a href="#">ALAMEDA</a></td>
								<td><a href="#">LOS ANGELS</a></td>
								<td><a href="#">LOS ANGELES</a></td>
								<td><a href="#">FRESNO</a></td>
							</tr>
							<tr>
								<td><a href="#">MARIN</td>
								<td><a href="#">LOS ANGELES</td>
								<td><a href="#">RIVERSIDE</td>
								<td><a href="#">MONTEREY</td>
							</tr>
							<tr>
								<td><a href="#">RIVERSIDE</a></td>
								<td><a href="#">VENTURA</a></td>
								<td><a href="#">KERN</a></td>
								<td><a href="#">LOS ANGELES</a></td>
							</tr>
							<tr>
								<td><a href="#">LOS ANGELES</a></td>
								<td><a href="#">SAN DIEGO</a></td>
								<td><a href="#">LOS ANGELES</a></td>
								<td><a href="#">ORANGE</a></td>

							</tr>
							<tr>
								<td><a href="#">LOS ANGELES</a></td>
								<td><a href="#">SAN DIEGO</a></td>
								<td><a href="#">ORANGE</a></td>
								<td><a href="#">ALAMEDA</a></td>
							</tr>
							<tr>
								<td><a href="#">SANTA BARBARA</a></td>
								<td><a href="#">SONOMA</a></td>
								<td><a href="#">ORANGE</a></td>
								<td><a href="#">SAN FRANCISCO</a></td>
							</tr>
						</table>
					</div>
					<!-- Panel 2 -->

				</div>
			</div>
		</div>
	</div>
	<!-- Tab panels -->




</div>

<!--Carousel Wrapper-->
<div id="carousel-example-2" class="carousel slide" data-ride="carousel">
	<h1 class="text-center pt-5" style="color: #000;">TESTIMONIALS</h1>
	<!--Indicators-->
	<ol class="carousel-indicators">
		<li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
		<li data-target="#carousel-example-2" data-slide-to="1"></li>
		<li data-target="#carousel-example-2" data-slide-to="2"></li>
	</ol>
	<!--/.Indicators-->
	<!--Slides-->
	<div class="carousel-inner" role="listbox">
		<div class="carousel-item active">
			<div class="view">

				<h2>âI was away from my father and the attendant looked after
					my him really well, suggest the service for anyone looking for
					healthcare assistance.â</h2>
				<div class="mask "></div>
			</div>
			<div class="carousel-caption">
				<h3 class="h3-responsive">Chanel Iman,Ceo</h3>
				<!--<p>First text</p>-->
			</div>
		</div>
		<div class="carousel-item">
			<!--Mask color-->
			<div class="view">
				<h2>âI was away from my father and the attendant looked after
					my him really well, suggest the service for anyone looking for
					healthcare assistance.â</h2>
				<div class="mask "></div>
			</div>
			<div class="carousel-caption">
				<h3 class="h3-responsive">Chanel Iman,Ceo</h3>
				<!--<p>Secondary text</p-->
			</div>
		</div>
		<div class="carousel-item">
			<!--Mask color-->
			<div class="view">
				<h2>âI was away from my father and the attendant looked after
					my him really well, suggest the service for anyone looking for
					healthcare assistance.â</h2>
				<div class="mask"></div>
			</div>
			<div class="carousel-caption">
				<h3 class="h3-responsive">Chanel Iman,Ceo</h3>
				<!--<p>Third text</p>-->
			</div>
		</div>
	</div>
	<!--/.Slides-->
	<!--Controls-->
	<a class="carousel-control-prev" href="#carousel-example-2"
		role="button" data-slide="prev"> <span
		class="carousel-control-prev-icon" aria-hidden="true"></span> <span
		class="sr-only">Previous</span>
	</a> <a class="carousel-control-next" href="#carousel-example-2"
		role="button" data-slide="next"> <span
		class="carousel-control-next-icon" aria-hidden="true"></span> <span
		class="sr-only">Next</span>
	</a>
	<!--/.Controls-->
</div>
<!--/.Carousel Wrapper-->
</body>
</html>
