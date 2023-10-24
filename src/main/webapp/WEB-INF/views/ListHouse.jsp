<%@page import="com.bean.HouseBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>

<body>
	<!-- Preloader -->
	<!-- <div class="preloader">
      <div class="cssload-speeding-wheel"></div>
    </div> -->
<%
		ArrayList<HouseBean> house = (ArrayList<HouseBean>) request.getAttribute("house");
%>


	<div id="wrapper">
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminLeftSideBar.jsp"></jsp:include>

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">HOUSE</h4>
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
							<h3 class="box-title">All Houses</h3>

							<div class="table-responsive">

								<table class="table">
									<thead>
										<tr>
											<td>HouseNumber</td>
											<td>BlockNumber</td>
											<td>Floor</td>>
											<td>ContactNumber</td>
											<td>TenantIndicator</td>
											<td>UserId</td>

										</tr>
									</thead>
									<tbody>
										<%
										for (HouseBean h : house) {
										%>
										<tr>
											<td><%=h.getHouseNumber()%></td>
											<td><%=h.getBlockNumber() %></td>
											<td><%=h.getFloor() %></td>
											<td><%=h.getContactNumber()%></td>
											<td><%=h.getTenantInd()%></td>
											<td><%=h.getUserId() %></td>
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
