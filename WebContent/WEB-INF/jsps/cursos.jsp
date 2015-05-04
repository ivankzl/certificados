<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inscribirse a un curso</title>
<link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />

<body>

	<div class="container">
		<img src="resources/images/marca.png">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="contenido2"><h1 class="universidadFondo">Grilla de Cursos a Distancia</h1></div>	
			</div>
			<div class="panel-body">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Título</th>
							<th>Inicio</th>
							<th>Duración</th>
							<th>Profesor</th>
							<th>URL</th>
						</tr>
					</thead>
					<c:forEach var="curso" items="${cursos}">
						<tr>

							<td><p>
									<span title="${curso.cur_descripcion}"><c:out value="${curso.cur_titulo}"></c:out></span>
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
							
								<a href="${pageContext.request.contextPath}/verificacion?cur_id=${curso.cur_id}">
									<button type="button" class="btn btn-warning">
										Inscribirse
									</button>
								</a>

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


</body>
</html>