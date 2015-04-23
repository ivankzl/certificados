<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet"
	href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />
<link rel="stylesheet" href="datepicker/css/datepicker.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

</head>

<body>

	<script src="jquery-1.8.3.js"></script>
	<script src="resources/bootstrap-3.3.4-dist/js/bootstrap.js"></script>

	<script type="text/javascript">
		$('.selectpicker').selectpicker();
	</script>

	<header>
		<title>Inscripción a Cursos</title>
	</header>

	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<form:form class="myform" method="post"
							action="${pageContext.request.contextPath}/crearegistro" modelAttribute="alumno">

							<div class="form-group">
								<label>Curso: <c:out value="${cur_titulo}"></c:out></label>
							</div>

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

							<!-- NOMBRE -->
							<div class="form-group">
								<label for="inputName">Nombre</label> 
								<input type="text" class="form-control" path="alu_nombre" name="alu_nombre" placeholder="Nombre">
							</div>

							<!-- APELLIDO -->
							<div class="form-group">
								<label for="inputApellido">Apellido</label> 
								<input type="text" class="form-control" path="alu_apellido" name="alu_apellido" placeholder="Apellido">
							</div>


							<!-- EMAIL -->
							<div class="form-group">
								<label for="inputEmail">Email</label> 
								<input type="email" class="form-control" path="alu_email" name="alu_email" placeholder="Email">
							</div>

							<!-- TELEFONO -->
							<div class="form-group">
								<label for="inputTel">Telefono</label> 
								<input type="text" class="form-control" path="alu_telefono" name="alu_telefono" placeholder="Telefono">
							</div>


							<!-- FECHA DE NACIMIENTO -->
							<div class="form-group">
								<label for="inputFechaNac">Fecha de Nacimiento</label> 
								<input type="date" class="form-control" path="alu_fechanac" name="alu_fechanac">
							</div>

							<!-- DOMICILIO -->
							<div class="form-group">
								<label for="inputDomicilio">Domicilio</label> 
								<input type="text" class="form-control" path="alu_domicilio" name="alu_domicilio" placeholder="Domicilio">
							</div>

							<!-- SEXO -->
							<div class="form-group">
								<div class="dropdown">
									<label for="inputNumDoc">Sexo</label><br> 
                                    <select class="form-control" id="sel1" path="alu_sexo" name="alu_sexo">
                                        <option value="NONE" label="Seleccione un Sexo"></option>
										<option value="M">Masculino</option>
										<option value="F">Femenino</option>
                                    </select>
								</div>
							</div>



							<button type="submit" class="btn btn-primary">Enviar</button>

						</form:form>
					</div>
				</div>
			</div>
			<!--container-->
		</div>
	</div>




</body>
</html>

