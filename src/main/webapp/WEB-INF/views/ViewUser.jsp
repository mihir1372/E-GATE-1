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
	UserBean u = (UserBean) request.getAttribute("user");
%>
 
 			<b>User ID</b>:<span><%=u.getUserId()%></span><br>
	
			<b>First Name</b>: <span><%=u.getFirstname()%></span><br>
			<b>Last Name</b>: <span><%=u.getLastname() %></span><br>
			<b>E-mail</b>: <span><%=u.getEmail() %></span><br>
			<b>Password</b>: <span><%=u.getPassword() %></span><br>
			<b>Gender</b>	: <span><%=u.getGender() %></span><br>
			<b>DOB</b>	: <span><%=u.getDob() %></span>
  
</body>
</html>