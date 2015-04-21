<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
	<head>
	    
        <meta charset="UTF-8">
        <link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />
        <link rel="stylesheet" href="datepicker/css/datepicker.css"/>
       
	</head>

	<body>

        <script src="jquery-1.8.3.js"></script>
        <script src="resources/bootstrap-3.3.4-dist/js/bootstrap.js"></script>
        <script src="datepicker/js/bootstrap-datepicker.js"></script>
    			
		<header>
			<title>Inscripción a Cursos</title>

        </header>
    
        <div class="col-lg-6 col-lg-offset-3">
            <div class="well">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                			<form:form class="myform" action="${pageContext.request.contextPath}/docreate" method="post" commandName="user">

                                <div class="form-group">
                                    <label>Curso: </label>
                                </div>

                                <!-- TIPO DNI -->
                                <div class="form-group">
                                    <div class="btn-group"><a class="btn btn-default dropdown-toggle btn-select2" data-toggle="dropdown" href="#">Tipo DNI<span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li>DNI</li>
                                        </ul>
                                    </div>
                                </div>

                                <!-- Nro DOCUMENTO -->
            				    <div class="form-group">
            				        <label for="inputNumDoc">N° Documento</label>
            				        <input type="text" class="form-control"  placeholder="N° Documento">
            				    </div>

                                <!-- NOMBRE -->
            				    <div class="form-group">
            				        <label for="inputName">Nombre</label>
            				        <input type="text" class="form-control"  placeholder="Nombre">
            				    </div>
            				
                                <!-- APELLIDO -->                
                                <div class="form-group">
                                    <label for="inputApellido">Apellido</label>
                                    <input type="text" class="form-control"  placeholder="Apellido">
                                </div>

            				     
                                <!-- EMAIL -->                
                                <div class="form-group">
                                    <label for="inputEmail">Email</label>
                                    <input type="email" class="form-control"  placeholder="Email">
                                </div>

                                <!-- TELEFONO -->                
                                <div class="form-group">
                                    <label for="inputTel">Telefono</label>
                                    <input type="text" class="form-control"  placeholder="Telefono">
                                </div>

                                <!-- DOMICILIO --> 
            				    <div class="form-group">
            				         <label for="inputDomicilio">Domicilio</label>
            				         <input type="text" class="form-control" placeholder="Domicilio">
            				     </div>

                                <!-- SEXO --> 

                                <div class="form-group">
                                    <div class="btn-group"><a class="btn btn-default dropdown-toggle btn-select2" 
                                    data-toggle="dropdown">Sexo<span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li>M</li>
                                            <li>F</li>
                                        </ul>
                                    </div>
                                </div>

            				     <button type="submit" class="btn btn-primary">Enviar</button>
            				
            				</form:form>
                        </div>
       		       </div>
            	</div><!--container-->
            </div>
        </div>

    <script>
            $(function() {
                $('#dateOfBirthInput').datepicker();
            });
        </script>

        <script type="text/javascript">
            $(function() {
                var yesButton = $("#yesbutton");
                var progress = $("#doitprogress");      
                
                yesButton.click(function() {        
                    yesButton.button("loading");

                    var counter = 0;
                    var countDown = function() {
                        counter++;
                        if (counter == 11) {
                            yesButton.button("complete");
                        } else {
                            progress.width(counter * 10 + "%");
                            setTimeout(countDown, 100);
                        }
                    };
                    
                    setTimeout(countDown, 100);
                });
                
            });
        </script>
	</body>	
</html>
