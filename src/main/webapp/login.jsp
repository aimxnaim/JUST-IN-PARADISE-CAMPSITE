<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
  response.addHeader("Pragma", "no-cache");
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  response.addHeader("Cache-Control", "pre-check=0, post-check=0");
  response.setDateHeader("Expires", 0);
  
  %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Login Form</title>
 	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="login-box">
	<h1>Login Here</h1>
		<form action="LoginController" method= "post">
		<p>Email:</p>
		<input type="text" id="useremail" name="useremail" placeholder="Enter email">
		<p>Password:</p>
		<input type="password" id="userpassword" name="userpassword" placeholder="Enter password">
		<input type="submit" name="submit" value="Login">
		<a href="sign-up.jsp">Sign Up an Account</a>
		</form>
	</div>
</body>
</html>