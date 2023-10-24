<%@page import="com.bean.MemberBean"%>
<%@page import="com.bean.AmmenitiesBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ammenity Accesss !</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

	<%
	List<AmmenitiesBean> am = (List<AmmenitiesBean>) request.getAttribute("maintain");
	%>
	
	<%
	List<MemberBean> m = (List<MemberBean>) request.getAttribute("member");
	%>
	<div id="wrapper">
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminLeftSideBar.jsp"></jsp:include>
		
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Add New Ammenity</h4>
					</div> 
					</div>
				<!--row -->
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div class="white-box">
							<h3 class="box-title">Fill Ammenity Details</h3>
									<form method="post" action="access">



										<div class="mb-3">
											<label class="form-label">Amme:</label> <select class="form-control"
												name="ammenitiesId">
												<%
												for (AmmenitiesBean a : am) {
												%>
												<option value="<%=a.getAmmenitiesId()%>"><%=a.getTitle() %></option>
												<%
												}
												%>
											</select>

										</div>
										
										<div class="mb-3">
											<label class="form-label">Member:</label> <select class="form-control"
												name="memberId">
												<%
												for (MemberBean a: m) {
												%>
												<option value="<%=a.getMemberId()%>"><%=a.getFirstname() %><%=a.getLastname() %></option>
												<%
												}
												%>
											</select>

										</div>

										<div class="mb-3">
											<label class="form-label">Date</label> <input
												class="form-control form-control-lg" type="date" name="date"
												placeholder="Enter Date" />
										</div>

										<div class="mb-3">
											<label class="form-label">time</label> <input
												class="form-control form-control-lg" type="time" name="time"
												placeholder="Enter Time" />
										</div>

										<div class="mb-3">
											<label class="form-label">Duration</label> <input
												class="form-control form-control-lg" type="text"
												name="duration" placeholder="Enter your Duration" />
										</div>
										<br>
										<div class="text-center mt-3">
											<label for="exampleInputEmail1"></label> <input type="submit"
												name="submit" value="Save Ammenity" class="form-control btn btn-success"
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