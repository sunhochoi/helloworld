<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<p>
		<a href="<c:url value="/i18n.do?lang=ko" />">한국어</a>
		<a href="<c:url value="/i18n.do?lang=en" />">English</a>
	</p>
	<p>site.title : <spring:message code="site.title" text="default text" /></p>
	<p>site.count : <spring:message code="site.count" arguments="첫번째" text="default text" /></p>
	<p>site.count using EL : <spring:message code="site.count" arguments="${siteCount}" text="default text" /></p>
	<p>not.exist : <spring:message code="not.exist" text="default text" /></p>
	<%--
	<p>not.exist 기본값 없음 : <spring:message code="not.exist" /></p>
	--%>
	
</body>
</html>


