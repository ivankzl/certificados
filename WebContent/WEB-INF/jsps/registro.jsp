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

<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

</head>

<body>

	<script src="jquery-1.8.3.js"></script>
	<script src="resources/bootstrap-3.3.4-dist/js/bootstrap.js"></script>


	<header>
		<title>Inscripción a Cursos</title>
	</header>

	<div class="col-lg-6 col-lg-offset-3">
	<img src="resources/images/marca.png">
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
                                    <select class="form-control" id="sel1" value="" path="alu_doc_id" name="alu_doc_id"><form:errors cssClass="error" path="alu_doc_id"></form:errors>
                                        <option value="" label="Seleccione un tipo de Documento"></option>
										<c:forEach var="documento" items="${documentos}">
											<option value="${documento.doc_id}"><c:out value="${documento.doc_nombre}"></c:out></option>
										</c:forEach>
                                    </select>
								</div>
							</div>

							<!-- Nro DOCUMENTO -->
							<div class="form-group">
								<label for="inputNumDoc">N° Documento</label> 
								<input type="text"class="form-control" value = ""path="alu_dni" name="alu_dni" placeholder="N° Documento"><form:errors cssClass="error" path="alu_dni"></form:errors>
							</div>

							<!-- NOMBRE -->
							<div class="form-group">
								<label for="inputName">Nombre</label> 
								<input type="text" class="form-control" path="alu_nombre" name="alu_nombre" placeholder="Nombre"><form:errors cssClass="error" path="alu_nombre"></form:errors>
							</div>

							<!-- APELLIDO -->
							<div class="form-group">
								<label for="inputApellido">Apellido</label> 
								<input type="text" class="form-control" path="alu_apellido" name="alu_apellido" placeholder="Apellido"><form:errors cssClass="error" path="alu_apellido"></form:errors>
							</div>


							<!-- EMAIL -->
							<div class="form-group">
								<label for="inputEmail">Email</label> 
								<input type="email" class="form-control" path="alu_email" name="alu_email" placeholder="Email"><form:errors cssClass="error" path="alu_email"></form:errors>
							</div>

							<!-- TELEFONO -->
							<div class="form-group">
								<label for="inputTel">Telefono</label> 
								<input type="text" class="form-control" path="alu_telefono" name="alu_telefono" placeholder="Telefono"><form:errors cssClass="error" path="alu_telefono"></form:errors>
							</div>


							<!-- FECHA DE NACIMIENTO -->
							<div class="form-group">
								<label for="inputFechaNac">Fecha de Nacimiento</label> 
									
									<select class="form-control" name="dia">
										<option> - Dia - </option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
									</select>
									
									<select class="form-control" name="mes">
										<option> - Mes - </option>
										<option value="01">Enero</option>
										<option value="02">Febrero</option>
										<option value="03">Marzo</option>
										<option value="04">Abril</option>
										<option value="05">Mayo</option>
										<option value="06">Junio</option>
										<option value="07">Julio</option>
										<option value="08">Agosto</option>
										<option value="09">Septiembre</option>
										<option value="10">Octubre</option>
										<option value="11">Noviembre</option>
										<option value="12">Diciembre</option>
									</select>
									
									<select class="form-control"  name="anio">
										<option> - Año - </option>
										<option value="2001">2001</option>
										<option value="2000">2000</option>
										<option value="1999">1999</option>
										<option value="1998">1998</option>
										<option value="1997">1997</option>
										<option value="1996">1996</option>
										<option value="1995">1995</option>
										<option value="1994">1994</option>
										<option value="1993">1993</option>
										<option value="1992">1992</option>
										<option value="1991">1991</option>
										<option value="1990">1990</option>
										<option value="1989">1989</option>
										<option value="1988">1988</option>
										<option value="1987">1987</option>
										<option value="1986">1986</option>
										<option value="1985">1985</option>
										<option value="1984">1984</option>
										<option value="1983">1983</option>
										<option value="1982">1982</option>
										<option value="1981">1981</option>
										<option value="1980">1980</option>
										<option value="1979">1979</option>
										<option value="1978">1978</option>
										<option value="1977">1977</option>
										<option value="1976">1976</option>
										<option value="1975">1975</option>
										<option value="1974">1974</option>
										<option value="1973">1973</option>
										<option value="1972">1972</option>
										<option value="1971">1971</option>
										<option value="1970">1970</option>
										<option value="1969">1969</option>
										<option value="1968">1968</option>
										<option value="1967">1967</option>
										<option value="1966">1966</option>
										<option value="1965">1965</option>
										<option value="1964">1964</option>
										<option value="1963">1963</option>
										<option value="1962">1962</option>
										<option value="1961">1961</option>
										<option value="1960">1960</option>
										<option value="1959">1959</option>
										<option value="1958">1958</option>
										<option value="1957">1957</option>
										<option value="1956">1956</option>
										<option value="1955">1955</option>
										<option value="1954">1954</option>
										<option value="1953">1953</option>
										<option value="1952">1952</option>
										<option value="1951">1951</option>
										<option value="1950">1950</option>
										<option value="1949">1949</option>
										<option value="1948">1948</option>
										<option value="1947">1947</option>
										
									</select>
									
							</div>

							<!-- DOMICILIO -->
							<div class="form-group">
								<label for="inputDomicilio">Domicilio</label> 
								<input type="text" class="form-control" path="alu_domicilio" name="alu_domicilio" placeholder="Domicilio"><form:errors cssClass="error" path="alu_domicilio"></form:errors>
							</div>

							<!-- SEXO -->
							<div class="form-group">
								<div class="dropdown">
									<label for="inputNumDoc">Sexo</label><br> 
                                    <select class="form-control" id="sel1" path="alu_sexo" name="alu_sexo"><form:errors cssClass="error" path="alu_sexo"></form:errors>
                                        <option value="NONE" label="Seleccione un Sexo"></option>
										<option value="M">Masculino</option>
										<option value="F">Femenino</option>
                                    </select>
								</div>
							</div>

							<input type="hidden" name="cur_id" value="${cur_id}">
							<input type="hidden" name="cur_titulo" value="${cur_titulo}">

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

