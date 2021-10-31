<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page isErrorPage="true" %>  

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
		crossorigin="anonymous">
		<link rel="stylesheet" href="/CSS/stylesheet.css">
		<title>Index Languages</title>
	</head>
	<body>
		<div id="container">
		<table class="table  table-hover table-bordered tblbrd table-striped">
		    <thead>
		        <tr>
		            <th scope="col">Name</th>
		            <th scope="col">Creator</th>
		            <th scope="col">Version</th>
		            <th scope="col">Action</th>
		        </tr>
		    </thead>
		    <tbody>
		        <c:forEach items="${languages}" var="lang">
		        <tr>
		            <td><a href="languages/<c:out value="${lang.id}"/>"><c:out value="${lang.name}"/></a></td>
		            <td><c:out value="${lang.creator}"/></td>
		            <td><c:out value="${lang.currentVersion}"/></td>
		            <td><a href="/languages/delete/<c:out value="${lang.id}"/>">Delete</a> <a href="languages/edit/<c:out value="${lang.id}"/>">Edit</a></td>
		        </tr>
		        </c:forEach>
		    </tbody>
		</table>
		<div id="form">
			<form:form action="/languages" method="post" modelAttribute="language">		  
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
			    <input id="btn" type="submit" value="Create a New language" class = "btn btn-success"/>	 
			</form:form>
		</div>
	</div>
	</body>
</html>