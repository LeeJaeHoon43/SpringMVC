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
        	<a href="<c:url value="/books/new"/>" class="btn btn-lg btn-primary">도서 등록</a>
        </div>
        
        <div class="row">
	    <c:forEach var="book" items="${books}" varStatus="status">
	        <div class="col-md-4">
	          <div class="card">
	              <img src="${book.image}" class="card-img-top" />
	              <div class="card-body">
	                  <h3 class="card-title">${book.title}</h3>
	                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	                  <a href="#" class="btn btn-primary">상세보기</a>
	              </div>
	          </div>
	        </div>
	    </c:forEach>
        </div>
    </div>
</body>
</html>