<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='Style.css'>
</head>
<body>
<%@ page import="java.sql.Connection" %>  
<%@ page import="java.sql.PreparedStatement" %>  
<%@page import="java.sql.ResultSet" %>
<%
String deposite = request.getParameter("deposite");
try {
	ServletContext ctx = getServletContext();
	Connection con = (Connection) ctx.getAttribute("mycon");
	
	String accnum = (String) ctx.getAttribute("accountnum");
	PreparedStatement ps = con.prepareStatement("Select Balance from accountinfo where Account_Num=?");
	
	ps.setString(1, accnum);
	ResultSet rs = ps.executeQuery();
	
	while(rs.next()) {
		double b1 = rs.getDouble(1);
		out.print("<html><head></head><body>");
		out.print("<br><div><h4><p>Your balance is: $"+b1+"</p></h4></div>");
		RequestDispatcher rd = request.getRequestDispatcher("action.jsp");
		rd.include(request, response);
		
		
	}
}catch(Exception e) {
	System.out.println(e);
}

%>
</body>
</html>