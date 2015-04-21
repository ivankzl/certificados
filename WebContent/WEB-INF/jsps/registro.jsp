<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
	<head>
	    
        <meta charset="UTF-8">
        <link rel="stylesheet" href="bootstrap-3.3.4-dist/css/bootstrap.css"/>
       
	</head>

	<body>
    			
		<header>
			<title>Inscripción a Cursos</title>

        </header>
    
        <div class="col-lg-6 col-lg-offset-3">
            <div class="well">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                			<form:form class="myform" action="${pageContext.request.contextPath}/registro" method="post" commandName="user">

                                <div class="form-group">
                                    <label>Curso: </label>
                                </div>

                                <!-- TIPO DNI -->
                                <form:select path="alu_dni" items="${DNI-LIST}" />
                                <select id="country" name="country">
                                   <option value="US">United Stated</option>
                                </select>

                                <!-- Nro DOCUMENTO -->
            				    <div class="form-group">
            				        <label for="inputNumDoc">N° Documento</label>
            				        <input type="text" class="form-control" path="alu_dni" placeholder="N° Documento">
            				    </div>

                                <!-- NOMBRE -->
            				    <div class="form-group">
            				        <label for="inputName">Nombre</label>
            				        <input type="text" class="form-control"path="alu_nombre"  placeholder="Nombre">
            				    </div>
            				
                                <!-- APELLIDO -->                
                                <div class="form-group">
                                    <label for="inputApellido">Apellido</label>
                                    <input type="text" class="form-control" path="alu_apellido" placeholder="Apellido">
                                </div>
                                
                                <!-- FECHA NACIMIENTO -->                
                                <div class="form-group">
                                    <label for="inputEmail">Email</label>
                                    <input type="date" class="form-control" path="alu_fechanac" name="Fecha de Nacimiento">
                                </div>
                                
                                <!-- EMAIL -->                
                                <div class="form-group">
                                    <label for="inputEmail">Email</label>
                                    <input type="email" class="form-control" path="alu_email" placeholder="Email">
                                </div>

                                <!-- TELEFONO -->                
                                <div class="form-group">
                                    <label for="inputTel">Telefono</label>
                                    <input type="text" class="form-control" path="alu_telefono"  placeholder="Telefono">
                                </div>

                                <!-- DOMICILIO --> 
            				    <div class="form-group">
            				         <label for="inputDomicilio">Domicilio</label>
            				         <input type="text" class="form-control" path="alu_domicilio" placeholder="Domicilio">
            				     </div>

                                <!-- SEXO --> 

                                <div class="dropdown">
                                    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Sexo
                                    <span class="caret"></span></button>
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">F</a></li>
                                      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">M</a></li>
                                    </ul>
                                </div>

            				    <button type="submit" class="btn btn-primary">Enviar</button>
            				
            				</form:form>
                        </div>
       		       </div>
            	</div><!--container-->
            </div>
        </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	</body>	
	
</html>