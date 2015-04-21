<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inscribirse a un curso</title>
<link rel="stylesheet"
	href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />
</head>
<body>

	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
			<div align="center"><h2>LISTADO DE CURSOS</h2></div>
				<div class="row">
					<div class="col-md-10"></div>
					<div class="col-md-1"></div>
				</div>
			</div>
			<div class="panel-body">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Título</th>
							<th>Descripción</th>
							<th>Inicio</th>
							<th>Duración</th>
							<th>Profesor</th>
							<th>URL</th>
						</tr>
					</thead>
					<c:forEach var="curso" items="${cursos}">
						<tr>
							
							<td><p>
									<c:out value="${curso.cur_titulo}"></c:out>
								</p></td>
							<td><p>
									<c:out value="${curso.cur_descripcion}"></c:out>
								</p></td>
							<td><p>
									<c:out value="${curso.cur_inicio}"></c:out>
								</p></td>
							<td><p>
									<c:out value="${curso.cur_duracion} horas"></c:out>
								</p></td>
							<td><p>
									<c:out value="${curso.cur_profesor}"></c:out>
								</p></td>
							<td><p>
									<c:out value="${curso.cur_url}"></c:out>
								</p></td>
							<td>
								<button type="button" class="btn btn-warning">
									<p>
										<a href="${pageContext.request.contextPath}/registracion">Inscribirse</a>
									</p>
								</button>
								
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<!--panel body-->
		</div>
		<!--panel heading-->
	</div>
	<!--panel panel-default-->
	</div>
	<!--container-->
</body>
</html>