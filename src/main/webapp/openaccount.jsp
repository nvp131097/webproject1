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
<form action="openacc.jsp" method="post">
<h1>||Welcome to My Bank||</h1>
<h2>Open an Account</h2>
		<input type="radio" name="user_account" value="current">Current account<br>
		<input type="radio" name="user_account" value="saving">Saving account<br>
		
		<label for="fname">First Name:</label>
		<input type="text" id="fname" name="fname" required="required"><br><br>
		
		<label for="lname">Last Name:</label>
		<input type="text" id="lname" name="lname" required="required"><br><br>
		
		<label for="birthday">Birthday:</label>
		<input type="date" id="birthday" name="birthday"><br><br>
		
		<label for="licenceNumber">LicenceNumber:</label>
		<input type="text" name="licenceNumber"><br><br>
		
		<label for="pin">PIN Number:</label>
		<input type="number" id="pin" name="pin"><br><br>
		
		<label for="Select sequerity question">Select security question</label>
		<select name="question1">
			<option>Question 1</option>
			<option value="Your first car">Your first car</option>
			<option value="Mother's middle name">Mother's middle name</option>
			<option value="Favourite holiday place">Favorite holiday place</option>
			<option value="Favourite dish">Favorite dish</option>
			<option value="Your lastName">Your LastName</option>
			<option value="Your Born City">Your Born City</option>
			</select>
			<label for="answer1">Answer1</label>
			<input type="text"  name="answer1" required="required"><br><br>
			
		<label for="Select sequerity question">Select security question</label>
		<select name="question2">
			<option>Question 2</option>
			<option value="Your first car">Your first car</option>
			<option value="Mother's middle name">Mother's middle name</option>
			<option value="Favourite holiday place">Favorite holiday place</option>
			<option value="Favourite dish">Favorite dish</option>
			<option value="Your lastName">Your LastName</option>
			<option value="Your Born City">Your Born City</option>
			</select>
			<label for="answer2">Answer2</label>
			<input type="text"  name="answer2" required="required"><br><br>
			
		<label for="Select sequerity question">Select security question</label>
		<select name="question3">
			<option>Question 3</option>
			<option value="Your first car">Your first car</option>
			<option value="Mother's middle name">Mother's middle name</option>
			<option value="Favourite holiday place">Favorite holiday place</option>
			<option value="Favourite dish">Favorite dish</option>
			<option value="Your lastName">Your LastName</option>
			<option value="Your Born City">Your Born City</option>
			</select>
			<label for="answer3">Answer3</label>
			<input type="text"  name="answer3" required="required"><br><br>
			
		<label for="Select sequerity question">Select security question</label>
		<select name="question4">
			<option>Question 4</option>
			<option value="Your first car">Your first car</option>
			<option value="Mother's middle name">Mother's middle name</option>
			<option value="Favourite holiday place">Favorite holiday place</option>
			<option value="Favourite dish">Favorite dish</option>
			<option value="Your lastName">Your LastName</option>
			<option value="Your Born City">Your Born City</option>
			</select>
			<label for="answer4">Answer4</label>
			<input type="text"  name="answer4" required="required"><br><br>
			
		<label for="balance">Balance(CAD)</label>
		<input type="number" name="balance" required="required"><br><br>
			
		<input type="checkbox" value="checked" name="condition" required="required">Agree terms and conditions<br><br>
		<input type="submit" value="Submit">
		<input type="reset" value="Reset">
</form>
</div>
</body>
</html>