<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Style.css">
</head>
<body>
<div><h1>||Welcome to my Bank||</h1></div>
<%@page import="javax.servlet.http.HttpSession"%>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires","0");
	response.setDateHeader("Expires",0);
	
	String accnum = (String) session.getAttribute("accountnum");
		
	
	out.print("<div><h3>Welcome to My Profile</h3>");
	out.print("<h3><p1>Account Number: "+accnum+"</p1></h3>");
	out.print("<br><form action='action.jsp'><input type='submit' value='Home'></form></div>");
	
%>	

</body>
</html>