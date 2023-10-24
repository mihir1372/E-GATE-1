<%@page import="com.bean.UserBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		ArrayList<UserBean> users = (ArrayList<UserBean>) request.getAttribute("users");
%>
 
 <table border="2">
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
			
		</tr>
		<% 
			}
		%>
		</table>
  
</body>
</html>