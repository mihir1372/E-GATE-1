<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<!-- Preloader -->
	<!-- <div class="preloader">
      <div class="cssload-speeding-wheel"></div>
    </div> -->
<%
		ArrayList<UserBean> users = (ArrayList<UserBean>) request.getAttribute("users");
%>


	<div id="wrapper">
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminLeftSideBar.jsp"></jsp:include>

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Users</h4>
					</div>
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">

						<ol class="breadcrumb">
							<li><a href="dashboard">Dashboard</a></li>
						</ol>
					</div>
					<!-- /.col-lg-12 -->
				</div>

				<!-- table row -->


				<div class="row">
					<div class="col-sm-12">
						<div class="white-box">
							<h3 class="box-title">All Users</h3>

							<div class="table-responsive">

								<table class="table">
									<thead>
										<tr>
											<th>User ID</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>E-mail</th>
											<th>Password</th>
											<th>Gender</th>	
											<th>DOB</th>	
											<th>Delete</th>
											<th>View</th>
										</tr>
									</thead>
									<tbody>
										<%
										for (UserBean u : users) {
										%>
										<tr>
											<td><%=u.getUserId()%></td>
											<td><%=u.getFirstname()%></td>
											<td><%=u.getLastname() %></td>
											<td><%=u.getEmail() %></td>
											<td><%=u.getPassword() %></td>
											<td><%=u.getGender() %></td>
											<td><%=u.getDob() %></td>
											<td><a href="deleteuser?userId=<%=u.getUserId()%>">Delete</a></td>
											<td><a href="viewuser?userId=<%=u.getUserId()%>">View</a></td>
										</tr>
										<%
										}
										%>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!--  table row end  -->

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
 