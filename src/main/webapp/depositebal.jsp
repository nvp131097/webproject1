<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.io.IOException" %>
<%@ page import="java.sql.Connection" %>  
<%@ page import="java.sql.PreparedStatement" %>  
<%@page import="java.sql.ResultSet" %>
<%@page import="javax.servlet.RequestDispatcher" %>
<%@page import="javax.servlet.ServletContext" %>
<%@page import="javax.servlet.ServletException" %>
<%@page import="javax.servlet.http.HttpServlet" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="javax.servlet.http.HttpServletResponse" %>
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
		double deposite1 = Double.parseDouble(deposite);
		double b1 = rs.getDouble(1)+deposite1;
		
		
		out.print("<br><div><h4><p>Your updated balance is: $"+b1+"</p></h4></div>");
		
		RequestDispatcher rd = request.getRequestDispatcher("action.jsp");
		rd.include(request, response);
		
		PreparedStatement ps1 = con.prepareStatement("update accountinfo set Balance=? where Account_Num=?");
		ps1.setDouble(1, b1);
		ps1.setString(2, accnum);
		
		ps1.executeUpdate();
		
	
		
	}
	
	
}catch(Exception e) {
	System.out.println(e);
}
%>
</body>
</html>