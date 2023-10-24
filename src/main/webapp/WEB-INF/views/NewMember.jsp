
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
						<h4 class="page-title">Add New Memeber</h4>
					</div> 
					</div>
				<!--row -->
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div class="white-box">
							<h3 class="box-title">Fill Member Details</h3>
							 	<form enctype="multipart/form-data" method="post" action="savemember">
										
										<div class="mb-3">
											<label class="form-label">FirstName </label> <input
												class="form-control form-control-lg" type="text"
												name="firstname" placeholder="Enter your First name" />
										</div>
										<div class="mb-3">
											<label class="form-label">LastName</label> <input
												class="form-control form-control-lg" type="text"
												name="lastname" placeholder="Enter your Last name" />
										</div>
										<div class="MB-3">
											<input class="form-check-input" name="gender" value="male"
												type="radio" name="flexRadioDefault" id="flexRadioDefault1">
											<label class="form-check-label" for="flexRadioDefault1">Male
												<BR>
											</label> <input class="form-check-input" name="gender" value="female"
												type="radio" name="flexRadioDefault" id="flexRadioDefault1">
											<label class="form-check-label" for="flexRadioDefault1">Female<span
												class="isError">${GenderError}</span>

											</label>
										</div>
										<BR>
										<div class="MB-3">
											<label for="exampleInputEmail1">Date Of Birth</label> <input
												type="date" name="dob" class="form-control"
												id="exampleInputEmail1" aria-describedby="emailHelp"
												placeholder="Enter Date Of Birth">
										</div>

										<div class="mb-3">
											<label class="form-label">Profile</label> <input
												class="form-control form-control-lg" type="file"
												name="profile" placeholder="Upload Photo..." />
										</div>
										<div class="MB-3">
											<label for="exampleInputEmail1"></label> <input type="submit"
												name="submit" value="Save Member" class="form-control btn btn-success"
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
