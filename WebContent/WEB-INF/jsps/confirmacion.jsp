<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Confirmación de inscripción</title>
<link rel="stylesheet"
	href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />
</head>
<body>

	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
			<div align="center"><h2>CONFIRMACIÓN DE INSCRIPCIÓN</h2></div>
				<div class="row">
					<div class="col-md-10"></div>
					<div class="col-md-1"></div>
				</div>
			</div>
			<div class="panel-body">
			
			
								<form:form class="myform" method="post"
									action="${pageContext.request.contextPath}/registrado" modelAttribute="inscripcion">
									
									<input type="hidden" name="cur_id" value="${cur_id}">
									<input type="hidden" name="alu_dni" value="${alu_dni}">
									<input type="hidden" name="alu_doc_id" value="${alu_doc_id}">
									
									¿Desea confirmar la inscripción?
		
									<button type="submit" class="btn btn-primary">Confirmar</button>

								</form:form>
			
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