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
<form action="action.jsp" method="post">
<%@page import="java.io.IOException" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Random" %>
<%@page import="javax.servlet.RequestDispatcher" %>
<%@page import="javax.servlet.ServletContext" %>
<%@page import="javax.servlet.ServletException" %>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.servlet.http.HttpServlet" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="javax.servlet.http.HttpServletResponse" %>

<%
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Cache-control", "no-store");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires","0");
		response.setDateHeader("Expires",0);
		
		String accnum = request.getParameter("accountnum");
		String pin = request.getParameter("pin");
		
		ServletContext ctx = getServletContext();
		ctx.setAttribute("accountnum", accnum);
		try {
			Connection con = (Connection) ctx.getAttribute("mycon");
			PreparedStatement ps = con.prepareStatement("select PIN,que1,ans1,que2,ans2,que3,ans3,que4,ans4 from accountinfo where Account_Num=?");
			
			ps.setString(1, accnum);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				if(pin.equals(rs.getString(1))){
					
					
					session.setAttribute("accountnum", accnum);
					
					ArrayList<String> question = new ArrayList<String>();
					question.add(rs.getString(2));
					question.add(rs.getString(4));
					question.add(rs.getString(6));
					question.add(rs.getString(8));
					
					ArrayList<String> answer = new ArrayList<String>();
					answer.add(rs.getString(3));
					answer.add(rs.getString(5));
					answer.add(rs.getString(7));
					answer.add(rs.getString(9));
					
					Random r = new Random();
					int i = r.nextInt(4);
					String question1 = question.get(i);	
					//out.print(question1);
					
					String answer1 = answer.get(i);	
					
					
					ctx.setAttribute("ans", answer1);
					
					out.print("<div><form action='question.jsp'>");
					out.print("<div><br><h1>||Welcome to My Bank||</h1>");
					out.print("<br><h2>Security question: </h2><br>"+question1);
					out.print("<br><br><input type='text' name='ans'>");
					out.print("<br><br><input type='submit' value='submit'></div>");
					
			}
				else {
					out.print("<div><h3><p>please enter correct pin...<p></h3></div>");
					RequestDispatcher rd = request.getRequestDispatcher("loginaccount.jsp");
					rd.include(request, response);
				}
		}
			
	}
		catch(Exception e) {
		System.out.println(e);
	}
%>
</body>
</html>