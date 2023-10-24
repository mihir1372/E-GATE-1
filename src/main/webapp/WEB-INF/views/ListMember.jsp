<%@page import="com.bean.MemberBean"%>
<%@page import="java.util.ArrayList"%>

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
<%
		ArrayList<MemberBean> member = (ArrayList<MemberBean>) request.getAttribute("member");
%>


	<div id="wrapper">
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminLeftSideBar.jsp"></jsp:include>

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Members</h4>
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
							<h3 class="box-title">All Members</h3>

							<div class="table-responsive">

								<table class="table">
									<thead>
										<tr>
											<th>Member ID</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Gender</th>
											<th>DOB</th>
											<th>Profile</th>

										</tr>
									</thead>
									<tbody>
										<%
										for (MemberBean m : member) {
										%>
										<tr>
											<td><%=m.getMemberId()%></td>
											<td><%=m.getFirstname()%></td>
											<td><%=m.getLastname()%></td>
											<td><%=m.getGender()%></td>
											<td><%=m.getDob()%></td>
											<td><img src="<%=m.getProfilepath()%>" height="50px"
												width="50px"></td>
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
