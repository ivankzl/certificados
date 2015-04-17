<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users</title>
</head>
<body>
<table>
	<tr><td>Username</td><td>Fullname</td><td>Email</td><td>Option</td><td>Option</td></tr>
	<c:forEach var="user" items="${users}">
		<tr>
			<td><p><c:out value="${user.username}"></c:out></p></td>
			<td><p><c:out value="${user.fullname}"></c:out></p></td>
			<td><p><c:out value="${user.email}"></c:out></p></td>
			<td><p><a href="${pageContext.request.contextPath}/alter">Modify</a></p></td>
			<td><p><a href="${pageContext.request.contextPath}/delete">Delete</a></p></td>
		</tr>
	</c:forEach>
	
</table>
<p><a href="${pageContext.request.contextPath}/create">Create new user</a></p>
</body>
</html>