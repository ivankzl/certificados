<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                                    <h2>CARGOS</h2>
                                    <h3>Docencia</h3>
                                </div>                                
                                <!-- nivel universitario y/o posgrado -->
            				    <div class="form-group">
            				        <label for="inputName">Nivel universitario y/o posgrado</label>
            				        <input type="text" class="form-control"  placeholder="Nivel universitario y/o posgrado">
            				    </div>            				
                                <!-- nivel terciario no universitario -->                
                                <div class="form-group">
                                    <label for="inputApellido">Nivel terciario no universitario</label>
                                    <input type="text" class="form-control"  placeholder="Nivel terciario no universitario">
                                </div>
                                <!-- Nivel basico y/o medio --> 
                                <div class="form-group">
                                    <label for="Sexo">Nivel basico y/o medio</label>
                                    <input type="text" class="form-control"  placeholder="Nivel terciario no universitario">
                                </div>
                                <!-- Cursos de posgrado y/o capacitaciones extracurriculares --> 
                                <div class="form-group">
                                    <label for="Estado">Cursos de posgrado y/o capacitaciones extracurriculares</label>
                                    <input type="text" class="form-control"  placeholder="Cursos de posgrado y/o capacitaciones extracurriculares">
                                </div>

                                <!-- CARGOS I+D -->

                                <div class="form-group">
                                    <h3>Cargos I+D</h3>
                                </div>
                                <!-- cargos en organismos científico-tecnológicos --> 
                                <div class="form-group">
                                    <label for="Estado">Cargos en organismos científico-tecnológicos</label>
                                    <input type="text" class="form-control"  placeholder="Cargos en organismos científico-tecnológicos">
                                </div>
                                <!-- Categorización del programa de incentivos -->
                                <div class="form-group">
                                    <label for="inputNumDoc">Categorización del programa de incentivos</label>
                                    <input type="text" class="form-control"  placeholder="Categorización del programa de incentivos">
                                </div>
                                <!-- Cargos I+D en otro tipo de institucines -->
            				    <div class="form-group">
            				        <label for="inputNumDoc">Cargos I+D en otro tipo de institucines</label>
            				        <input type="text" class="form-control"  placeholder="Cargos I+D en otro tipo de institucines" >
            				    </div>

                                <!-- CARGOS EN GESTION INSTITUCIONAL -->

                                <div class="form-group">
                                    <h3>Cargos en Gestion Institucional</h3>
                                </div>
            				    <!-- cargos en gestion institucional -->
            				    <div class="form-group">
            				        <label for="inputName">Cargos en gestion institucional</label>
            				        <input type="text" class="form-control"  placeholder="Cargos en gestion institucional">
            				    </div>  

                                <!-- OTROS CARGOS -->

                                <div class="form-group">
                                    <h3>Otros Cargos</h3>
                                </div>
                                <!-- Otros Cargos -->                
                                <div class="form-group">
                                    <label for="inputName">Otros Cargos</label>
                                    <input type="text" class="form-control"  placeholder="Otros Cargos">
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
