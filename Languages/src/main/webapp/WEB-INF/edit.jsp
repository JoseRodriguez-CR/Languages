<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
	<div id="top" class="d-flex justify-content-end ">
		<a href="/languages"><h4 class=" btn-primary ">Dashboard</h4></a>
		<a href="/languages/delete/<c:out value="${language.id}"/>"><h4 class=" btn-primary">Delete</h4></a>
	</div>
		<form:form action="/languages/${language.id}" method="post" modelAttribute="language">
		    <input type="hidden" name="_method" value="put">
			    <p>
			        <form:label cssClass="label" path="name">Name</form:label>
			        <form:input cssClass="box" path="name"/>
			        <form:errors cssClass="red" path="name"/>

			    </p>
			    <p>
			        <form:label cssClass="label" path="creator">Creator</form:label>
			        <form:input cssClass="box" path="creator"/>
    				<form:errors cssClass="red" path="creator"/>
			    </p>
			    <p>
			        <form:label cssClass="label" path="currentVersion">Version</form:label>
			        <form:input cssClass="box" path="currentVersion"/>
     		 		<form:errors cssClass="red" path="currentVersion"/>
			    </p>
		    <input id="btn" type="submit" value="Update" class = " btn btn-success "/>
		</form:form>
	</div>
</body>
</html>