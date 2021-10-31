<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="/CSS/stylesheet.css">
<title><c:out value="${language.name}"/></title>
</head>
<body>
	<div id="container">
	<div id="top">
		<a href="/languages"><h3 class="d-flex justify-content-end ">Dashboard</h3></a>
	</div>
		<h1 class="gap"><c:out value="${language.name}"/></h1>
		<h2 class="gap"><c:out value="${language.creator}"/></h2>
		<h2 class="gap"><c:out value="${language.currentVersion}"/></h2>
		<a href="/languages/edit/<c:out value="${language.id}"/>"><h3 class="gap btn btn-secondary">Edit</h3></a>
		<a href="/languages/delete/<c:out value="${language.id}"/>"><h3 class="gap btn btn-warning">Delete</h3></a>
	</div>
</body>
</html>