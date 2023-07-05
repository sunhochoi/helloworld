<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="/resources/style.css">

<!-- ${pageContext.request.contextPath} -->
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Home</title>
</head>
<body>

	<div class="login-wrapper">
		<h2>Login</h2>
		<form method="post" action="/loginB" id="login-form">
			<input type="text" name="userId" placeholder="Email">
			<input type="password" name="userPwd"  placeholder="Password">
			<label for="remember-check">
				<input type="checkbox" id="Login">
			</label>
			 <input type="submit" value="Login">
		</form>
	</div>


	
</body>
</html>


