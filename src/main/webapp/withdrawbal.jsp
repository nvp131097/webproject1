<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.Connection" %>  
<%@ page import="java.sql.PreparedStatement" %>  
<%@page import="java.sql.ResultSet" %>
<% 
String withdraw = request.getParameter("withdraw");
		double withdrow1 = Double.parseDouble(withdraw);
		try {
			ServletContext ctx = getServletContext();
			Connection con = (Connection) ctx.getAttribute("mycon");
			
			String accnum = (String) ctx.getAttribute("accountnum");
			PreparedStatement ps = con.prepareStatement("Select Balance from accountinfo where Account_Num=?"); 
			
			ps.setString(1, accnum);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				
				if(rs.getDouble(1) < withdrow1) {
					out.print("<div><h4><p>Insufficient balance...</p></h4><div>");
					RequestDispatcher rd = request.getRequestDispatcher("withdraw.jsp");
					rd.include(request, response);
				}
				else {
					
					double b1 = rs.getDouble(1)-withdrow1;
					
					out.print("<br><div><h4><p>Your updated balance is: $"+b1+"<p></h4></div>");
					
					RequestDispatcher rd = request.getRequestDispatcher("action.jsp");
					rd.include(request, response);
					
					PreparedStatement ps1 = con.prepareStatement("update accountinfo set Balance=? where Account_Num=?");
					ps1.setDouble(1, b1);
					ps1.setString(2, accnum);
					
					ps1.executeUpdate();
				}
				
		}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		%>
</body>
</html>