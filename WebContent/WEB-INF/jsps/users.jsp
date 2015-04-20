<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/css/bootstrap.css"/>
		<title>Users</title>
	</head>

    <body>
        <div class="row">
            <div class="col-md-10"></div>
            <div class="col-md-2"><a class="cerrar-sesion" href="index.html"Logout</a></div>
        </div>

	    <div class="container">
            <div class="panel panel-default">
                    <div class="panel-heading">Users
                        <div class="row">
                            <div class="col-md-10"></div>
                            <div class="col-md-1"><button type="button" class="btn btn-primary"><a href="${pageContext.request.contextPath}/create">Create new user</a></button></div>
                            <div class="col-md-1"></div>
                        </div>
                </div>
                    <div class="panel-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Username</th>
                                    <th>Username</th>
                                    <th>Email</th>
                                </tr>
                            </thead>
                            <c:forEach var="user" items="${users}">
	                            <tr>
	                                <td><p><c:out value="${user.username}"></c:out></p></td>
	                                <td><p><c:out value="${user.fullname}"></c:out></p></td>
	                                <td><p><c:out value="${user.email}"></c:out></p></td>
	                                <td>
	                                    <button type="button" class="btn btn-warning"><p><a href="${pageContext.request.contextPath}/alter">Modify</a></p></button>
	                                    <button type="button" class="btn btn-danger"><p><a href="${pageContext.request.contextPath}/delete">Delete</a></p></button>
	                                </td>
	                            </tr>
	                        </c:forEach>
                        </table>
                    </div><!--panel body-->
                </div><!--panel heading-->
            </div><!--panel panel-default-->
        </div><!--container-->

    </body>
</html>