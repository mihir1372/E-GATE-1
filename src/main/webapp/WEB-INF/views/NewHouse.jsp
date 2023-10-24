<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="AllCss.jsp"></jsp:include>
<title></title>
</head>
<body>
<div id="wrapper">
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminLeftSideBar.jsp"></jsp:include>
		
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Add 	house</h4>
					</div> 
					</div>
				<!--row -->
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div class="white-box">
							<h3 class="box-title">Fill House Details</h3>

									<form method="post" action="savehouse">
										<div class="mb-3">
											<label class="form-label">HouseNumber</label> <input
												class="form-control form-control-lg" type="text"
												name="houseNumber" placeholder="Enter your houseNumber" />
										</div>
										<div class="mb-3">
											<label class="form-label">blockNumber</label> <input
												class="form-control form-control-lg" type="text"
												name="blockNumber" placeholder="Enter your blockNumber" />
										</div>
										<div class="mb-3">
											<label class="form-label">Floor</label> <input
												class="form-control form-control-lg" type="text"
												name="floor" placeholder="Enter Your Floor Number" /> 

										</div>
										<div class="mb-3">
											<label class="form-label">Contact Number</label> <input
												class="form-control form-control-lg" type="text"
												name="contactNumber" placeholder="Enter your Contact Number" />
										</div>
										<div class="mb-3">
											<label class="form-label">Tenant Indicator</label> <input
												class="form-control form-control-lg" type="checkbox"
												name="tenantInd"  value="1"/>
										</div>
										<div class="text-center mt-3">
											<label for="exampleInputEmail1"></label> <input type="submit"
												name="submit" value="Save House" class="form-control btn btn-success"
												id="exampleInputEmail1" aria-describedby="emailHelp">
										</div>
									</form>
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
	
	
	<jsp:include page="AllJs.jsp"></jsp:include>
								</body>
</html>