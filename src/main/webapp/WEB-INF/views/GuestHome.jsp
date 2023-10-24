<%@page import="com.bean.GuestBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="AllCss.jsp"></jsp:include>

<link rel="stylesheet" href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.css" />

</head>
<body>
<%
		ArrayList<GuestBean> guest = (ArrayList<GuestBean>) request.getAttribute("guest");
%>


	<div id="wrapper">
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminLeftSideBar.jsp"></jsp:include>

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Guest</h4>
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
							<h3 class="box-title">All Guest</h3>

							<div class="table-responsive">

								<table id="myTable" class="table">
									<thead>
										<tr>
											<th>Guest ID</th>
			<th>Member Name</th>
			<th>House Number</th>
			<th>Block Number</th>
			<th>LogDate</th>
			<th>Time</th>
			<th>Purpose</th>	
			<th>Guest Name</th>	
			<th>No Of Guests</th>
			<th>Action</th>

										</tr>
									</thead>
									<tbody>
										<%
										for (GuestBean u : guest) {
										%>
										<tr>
											<td><%=u.getGuestid()%></td>
			<td><%=u.getMemberName()%></td>
			<td><%=u.getHouseNumber()%></td>
			<td><%=u.getBlockNumber() %></td>
			<td><%=u.getLogdate() %></td>
			<td><%=u.getTime() %></td>
			<td><%=u.getPurpose() %></td>
			<td><%=u.getGuestName() %></td>
			<td><%=u.getNoofGuests()%></td>
			<td>
			
			<%if(u.getVisitedInd()==null || u.getVisitedInd() == false){ %><a href="updatevisitstatus?guestId=<%=u.getGuestid() %>&visitedInd=<%=u.getVisitedInd()%>" class="btn btn-danger">NotVisited</a>
			<%}else{ %>
			<a class="btn btn-success">Visited</a>
			<%} %>
			</td>
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
<script src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.js"></script>
<script type="text/javascript"> 
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
</body>
</html>