
<%@page import="com.bean.ChartBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>

<body>
	<!-- Preloader -->
	<!-- <div class="preloader">
      <div class="cssload-speeding-wheel"></div>
    </div> -->
	<div id="wrapper">
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminLeftSideBar.jsp"></jsp:include>

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Dashboard</h4>
					</div>
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<a href="http://wrappixel.com/templates/pixeladmin/"
							target="_blank"
							class="
                  btn btn-danger
                  pull-right
                  m-l-20
                  btn-rounded btn-outline
                  hidden-xs hidden-sm
                  waves-effect waves-light
                ">Upgrade
							to Pro</a>
						<ol class="breadcrumb">
							<li><a href="#">Dashboard</a></li>
						</ol>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- row -->
				<div class="row">
					<!--col -->
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="white-box">
							<div class="col-in row">
								<div class="col-md-6 col-sm-6 col-xs-6">
									<i data-icon="E" class="linea-icon linea-basic"></i>
									<h5 class="text-muted vb">TOTAL GUESTS</h5>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-6">
									<h3 class="counter text-right m-t-15 text-danger">${totalGuest}</h3>
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="progress">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">40% Complete (success)</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.col -->
					<!--col -->
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="white-box">
							<div class="col-in row">
								<div class="col-md-6 col-sm-6 col-xs-6">
									<i class="linea-icon linea-basic" data-icon="&#xe01b;"></i>
									<h5 class="text-muted vb">VISITED GUEST</h5>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-6">
									<h3 class="counter text-right m-t-15 text-megna">${visitedGuest}</h3>
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="progress">
										<div class="progress-bar progress-bar-megna"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">40% Complete (success)</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.col -->
					<!--col -->
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="white-box">
							<div class="col-in row">
								<div class="col-md-6 col-sm-6 col-xs-6">
									<i class="linea-icon linea-basic" data-icon="&#xe00b;"></i>
									<h5 class="text-muted vb">THIS MONTH GUEST</h5>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-6">
									<h3 class="counter text-right m-t-15 text-megna">${thismonthGuest}</h3>
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="progress">
										<div class="progress-bar progress-bar-primary"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">40% Complete (success)</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
				<!--row -->
				<div class="row">
					<div class="col-md-12">
						<div class="white-box">
							<h3 class="box-title">This Year Visisted</h3>
  							<div id="morris-area-chart2" style="height: 370px"></div>
						</div>
					</div>
				</div>


			</div>
			<!-- /.container-fluid -->
			<jsp:include page="AdminFooter.jsp"></jsp:include>
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
		type="text/javascript"></script>

	
	<% 
	
			List<ChartBean> chartdata = (List<ChartBean>)request.getAttribute("chartdata");
	%>
	
	<script type="text/javascript">
		$(document).ready(function() {
			Morris.Bar({
				element : "morris-area-chart2",
				data : [
					<%for(ChartBean c:chartdata){%>
					{
					Date : "<%=c.getLogdate()%>",
					TotalVisited : <%=c.getCount()%>
				}
					,
					<%}%>

				],
				xkey : "Date",
				ykeys : [ "TotalVisited" ],
				labels : [ "TotalVisited" ],
				pointSize : 0,
				fillOpacity : 0.7,
				pointStrokeColors : [ "#ccc", "#cbb2ae" ],
				behaveLikeLine : true,
				gridLineColor : "#e0e0e0",
				lineWidth : 0,
				smooth : false,
				hideHover : "auto",
				lineColors : [ "#ccc", "#cbb2ae" ],
				resize : true,
			});

/* 			$(".counter").counterUp({
				delay : 100,
				time : 1200,
			});
 */
		})
	</script>
	<jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>
