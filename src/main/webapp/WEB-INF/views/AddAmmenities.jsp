<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="AllCss.jsp"></jsp:include>

</head>
<body>
	<div id="wrapper">
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminLeftSideBar.jsp"></jsp:include>
		
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Maintainence</h4>
					</div> 
					</div>
				<!--row -->
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div class="white-box">
							<h3 class="box-title">Fill Maintainence Details</h3>
							 	
		<form method="post" action="maintainence">
										<div class="mb-3">
											<label class="form-label">Title</label> <input
												class="form-control form-control-lg" type="text"
												name="title" placeholder="Enter Title name" />
										</div>
										
										<div class="mb-3">
											<label class="form-label">Active</label> <input
												class="form-control form-control-lg" type="checkbox"
												name="active" placeholder="Is Ammenity Active ?" value="1" />
										</div>
										
										<div class="mb-3">
											<label class="form-label">Maintainence Start Date</label> <input
												class="form-control form-control-lg" type="date"
												name="maintainenece_start_date" placeholder="Enter your mainatainence start date" />
										</div>
										<div class="mb-3">
											<label class="form-label">Maintainence End Date</label> <input
												class="form-control form-control-lg" type="date"
												name="maintainenece_end_date" placeholder="Enter your mainatainence end date" />
										</div>
										 <div class="text-center mt-3">
											<label for="exampleInputEmail1"></label> <input type="submit"
												name="submit" value="Save Maintainence" class="form-control btn btn-success"
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