<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.AmmenitiesBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Maintainence List</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<%
		ArrayList<AmmenitiesBean> ammenity = (ArrayList<AmmenitiesBean>) request.getAttribute("ammenity");
%>


	<div id="wrapper">
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminLeftSideBar.jsp"></jsp:include>

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Ammenities</h4>
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
							<h3 class="box-title">All Ammenity </h3>

							<div class="table-responsive">

								<table class="table">
									<thead>
										<tr>
											<th>AmmenityID</th>
											<th>Title</th>
			 
											<th>Maintainenece_start_date</th>	
											<th>Maintainenece_end_date</th>
											<th>Active</th>
											<th>Action</th>

										</tr>
									</thead>
									<tbody>
										<%
										for (AmmenitiesBean a : ammenity) {
										%>
										<tr>
											<td><%=a.getAmmenitiesId()%></td>
											<td><%=a.getTitle()%></td>
 											<td><%=a.getMaintainenece_start_date()==null?"NA":a.getMaintainenece_start_date() %></td>
											<td><%= a.getMaintainenece_end_date()==null? "NA":a.getMaintainenece_end_date() %></td>
											<td><%=a.getActive()%></td>
											<td><a href="editmaintain?ammenitiesId=<%=a.getAmmenitiesId()%>">Edit</a></td>
		</tr>
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