<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">
<title>Insert title here</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
	<%-- <main class="d-flex w-100">
		<div class="container d-flex flex-column">
			<div class="row vh-100">
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">
						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</main> --%>
	
	<div id="wrapper">
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminLeftSideBar.jsp"></jsp:include>
		
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Edit Ammenity</h4>
					</div> 
					</div>
				<!--row -->
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div class="white-box">
							<h3 class="box-title">Edit Ammenity Details</h3>
							 	<form method="post" action="updateammenity">
									
										<input type="hidden" name="ammenitiesId" value="${a.ammenitiesId}" >
										
										<div class="mb-3">
											<label class="form-label">Title</label> <input
												class="form-control form-control-lg" type="text"
												name="title"  value="${a.title}" placeholder="Enter Title name" />
										</div>
										
										<div class="mb-3">
											<label class="form-label">Active</label> <input
												class="form-control form-control-lg" type="checkbox"
												name="active"  ${a.active==1?"checked":"" } placeholder="Is Ammenity Active ?" value="1" />
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
											<button input type="submit" class="btn btn-lg btn-primary">
												Update</button>

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