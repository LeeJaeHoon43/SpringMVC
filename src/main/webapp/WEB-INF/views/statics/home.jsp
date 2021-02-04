<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
<title>Hello, world!</title>
</head>
<body class="container">
	<div class="jumbotron">
		<h1>Hello, world!</h1>
		<p>The time on the server is ${serverTime}.</p>
	</div>
</body>
</html>
