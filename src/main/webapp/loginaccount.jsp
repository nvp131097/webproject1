<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="Style.css">
</head>
<body>
<div>
	<form action="loginacc.jsp" method="post">
	<h1>||Welcome to My Bank||</h1>
	<h2>Login to your account</h2>
	<label for="accountnum">Account Number:</label>
	<input type="text" name="accountnum"><br><br>
	
	<label for="pin">PIN Number:</label>
	<input type="number" name="pin"><br><br>
	
	
	<input type="submit" value="submit">
	</form>
</div>
</body>
</html>