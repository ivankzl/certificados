<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<link rel="stylesheet"	href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />

</head>

<body>
	<header>
		<title>Ingrese su tipo y número de Documento</title>
	</header>

	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/images/marca.png">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<form:form class="myform" method="post"
							action="${pageContext.request.contextPath}/control" modelAttribute="alumno">

							<!-- TIPO DNI -->
							<div class="form-group">
								<div class="dropdown">
									<label for="inputNumDoc">Tipo de Documento</label><br> 
                                    <select class="form-control" id="sel1" value="hola" path="alu_doc_id" name="alu_doc_id">
                                        <option value="NONE" label="Seleccione un tipo de Documento"></option>
										<c:forEach var="documento" items="${documentos}">
											<option value="${documento.doc_id}"><c:out value="${documento.doc_nombre}"></c:out></option>
										</c:forEach>
                                    </select>
								</div>
							</div>

							<!-- Nro DOCUMENTO -->
							<div class="form-group">
								<label for="inputNumDoc">N° Documento</label> 
								<input type="text"class="form-control" path="alu_dni" name="alu_dni" placeholder="N° Documento">
							</div>

							
							<input type="hidden" name="cur_id" value="${cur_id}">

							<button type="submit" class="btn btn-primary">Enviar</button>

						</form:form>
					</div>
				</div>
			</div> <!--container-->
		</div>
	</div>
</body>
</html>
