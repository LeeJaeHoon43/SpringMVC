<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
<title>Books</title>
</head>
<body>
	<div class="container">
        <div class="jumbotron">
            <h1>Books INDEX</h1>
            <p>views/books/index.jsp</p>
        </div>
        <a href="<c:url value="/books/new"/>" class="btn btn-lg btn-primary">도서 등록</a>
    </div>
</body>
</html>