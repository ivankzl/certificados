<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
	<head>
	    
        <meta charset="UTF-8">
        <link rel="stylesheet" href="bootstrap-3.3.4-dist/css/bootstrap.css"/>
         <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Archivo+Narrow:400,700,700italic,400italic">
	</head>

	<body>
    			
		<header>
			<title>Registro</title>

        </header>
    
        <div class="col-lg-8 col-lg-offset-2">
        <img src="imagenes/marca.png">
            <div class="well">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                        	
                        	<div class="Container2">
                        		<h1 class="titulo-fondo">Cargue su Curriculum</h2>
                        	</div>

                			<form:form class="myform" action="${pageContext.request.contextPath}/registrarse" method="post" commandName="user">

                                <!-- DOCENCIA -->

                                <div class="form-group">
                                    <h2>ANTECEDENTES</h2>
                                    <h3>Formación de recursos humanos en CyT</h3>
                                </div>                                
                                <!-- Becarios -->
            				    <div class="form-group">
            				        <label for="inputName">Becarios</label>
            				        <input type="text" class="form-control"  placeholder="Becarios">
            				    </div>            				
                                <!-- Tesistas -->                
                                <div class="form-group">
                                    <label for="inputApellido">Tesistas</label>
                                    <input type="text" class="form-control"  placeholder="Tesistas">
                                </div>
                                <!-- Investigadores --> 
                                <div class="form-group">
                                    <label for="Sexo">Investigadores</label>
                                    <input type="text" class="form-control"  placeholder="Investigadores">
                                </div>
                                <!-- Pasantes de I+D y/o formación académica --> 
                                <div class="form-group">
                                    <label for="Estado">Pasantes de I+D y/o formación académica</label>
                                    <input type="text" class="form-control"  placeholder="Pasantes de I+D y/o formación académica">
                                </div>
                                <!-- Personal de apoyo a la I+D --> 
                                <div class="form-group">
                                    <label for="Estado">Personal de apoyo a la I+D</label>
                                    <input type="text" class="form-control"  placeholder="Personal de apoyo a la I+D">
                                </div>

                                <!-- FINANCIAMIENTO -->

                                <div class="form-group">
                                    <h3>Financiamiento CyT</h3>
                                </div>   
                                <!-- Financiamiento cientifico y tecnologico --> 
                                <div class="form-group">
                                    <label for="Estado">Financiamiento cientifíco y tecnológico</label>
                                    <input type="text" class="form-control"  placeholder="Financiamiento cientifíco y tecnológico">
                                </div>

                                 <!--EXTENSION -->

                                 <div class="form-group">
                                    <h3>Extensión</h3>
                                </div>   
                                <!-- Actividades de divulgación CyT --> 
                                <div class="form-group">
                                    <label for="Estado">Actividades de divulgación CyT</label>
                                    <input type="text" class="form-control"  placeholder="Actividades de divulgación CyT">
                                </div>
                                <!-- Extension rural o industrial --> 
                                <div class="form-group">
                                    <label for="Estado">Extensión rural o industrial</label>
                                    <input type="text" class="form-control"  placeholder="Extensión rural o industrial">
                                </div>
                                <!-- Prestación de sericios sociales y/o comunitarios --> 
                                <div class="form-group">
                                    <label for="Estado">Prestación de sericios sociales y/o comunitarios</label>
                                    <input type="text" class="form-control"  placeholder="Prestación de sericios sociales y/o comunitarios">
                                </div>
                                <!-- Producción y/o divulgación artística o cultural --> 
                                <div class="form-group">
                                    <label for="Estado">Producción y/o divulgación artística o cultural</label>
                                    <input type="text" class="form-control"  placeholder="Producción y/o divulgación artística o cultural">
                                </div>
                                <!-- Otro tipo de actividad de extensión --> 
                                <div class="form-group">
                                    <label for="Estado">Otro tipo de actividad de extensión</label>
                                    <input type="text" class="form-control"  placeholder="Otro tipo de actividad de extensión">
                                </div>

                                <!--EVALUACION -->
                                 
                                <div class="form-group">
                                    <h3>Evaluación</h3>
                                </div>
                                <!-- Evaluación de personal CyT Y jurado de tesis y/o premios --> 
                                <div class="form-group">
                                    <label for="Estado">Evaluación de personal CyT Y jurado de tesis y/o premios</label>
                                    <input type="text" class="form-control"  placeholder="Evaluación de personal CyT Y jurado de tesis y/o premios">
                                </div>
                                <!-- Evaluación de programas/proyectos de I+D y/o extensión --> 
                                <div class="form-group">
                                    <label for="Estado">Evaluación de programas/proyectos de I+D y/o extensión</label>
                                    <input type="text" class="form-control"  placeholder="Evaluación de programas/proyectos de I+D y/o extensión">
                                </div>
                                <!-- Evaluacion institucional --> 
                                <div class="form-group">
                                    <label for="Estado">Evaluacion institucional</label>
                                    <input type="text" class="form-control"  placeholder="Evaluacion institucional">
                                </div>
                                <!-- Otro tipo de evaluación --> 
                                <div class="form-group">
                                    <label for="Estado">Otro tipo de evaluación</label>
                                    <input type="text" class="form-control"  placeholder="Otro tipo de evaluación">
                                </div>

                                <!--  BECAS -->
                                 
                                <div class="form-group">
                                    <h3>Becas</h3>
                                </div>
                                <!-- Becas --> 
                                <div class="form-group">
                                    <label for="Estado">Becas</label>
                                    <input type="text" class="form-control"  placeholder="Becas">
                                </div>                               
                                <!-- BOTON SIGUIENTE -->
                                <div class="row">
                                  <div class="col-md-4"></div>
                                  <div class="col-md-4"><button type="submit" class="btn-siguiente">Siguiente</button></div>
                                  <div class="col-md-4"></div>
                                </div>
            				   		
            				</form:form>
                        </div>
       		       </div>
            	</div><!--container-->
            </div>
        </div>

        <footer>
            <div class="col-lg-8 col-lg-offset-2">
                <div class="well">
                    <div class="row">   

                        <div class="col-lg-12"> 
                           
                            <div class="col-md-4">
                                    <div class="row">
                                        <div class="col-md-4">
                                             <a class="enlace" target="_blank" href="https://mail.um.edu.ar/horde3/imp/">Webmail</a>
                                        </div>
                                    </div>    
                                    <div class="row">
                                        <div class="col-md-4">
                                           <a class="enlace" target="_blank" href="/es/mapa-sitio.html?lang=es">Mapa del Sitio</a>
                                        </div>
                                    </div>
                                
                            </div>                 
                            
                            <div class="col-md-7">
                                    <p>Boulogne Sur Mer 683. CP 5500. Mendoza, Argentina
                                    Teléfonos: 54 261 4202017. Fax: 54 261 4202017 (Opción 9)</p>
                            </div>
                        </div><!--col-6-->
                    </div>
                </div><!--well-->
            </div>            
        </footer>   
	
    </body>	
	
</html>
