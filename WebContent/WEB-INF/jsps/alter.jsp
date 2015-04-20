<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/css/bootstrap.css"/>
		<title>Create User</title>
	</head>
	
	<body>
		<div class="row">
		    <div class="col-md-10"></div>
		    <div class="col-md-2"><a class="cerrar-sesion" href="index.html">Logout</a></div>
		</div>

		<div id="container">
			<form:form class="panel-crear-usuario" action="${pageContext.request.contextPath}/docreate" method="post" commandName="user">

			    <div class="form-group">
			        <label for="inputUser">User</label>
			        <form:input type="text" class="form-control" path="username" placeholder="User" />
			    </div>

			    <div class="form-group">
			        <label for="inputName">Fullname</label>
			        <form:input type="text" class="form-control" path="fullname" placeholder="Fullname" />
			    </div>
			
			    <div class="form-group">
			         <label for="inputEmail">Email</label>
			         <form:input type="text" class="form-control" path="email" placeholder="Email" />
			    </div>
			     
			     <div class="form-group">
			         <label for="inputPassword">Password</label>
			         <form:input type="text"  class="form-control" path="password" placeholder="Password" />
			     </div>

			     <button type="submit" class="btn btn-primary">Create</button>
			
			</form:form>
   		</div><!--container-->
	</body>
</html>