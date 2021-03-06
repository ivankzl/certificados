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

                                <!-- OTRAS ACTIVIDADES -->

                                <div class="form-group">
                                  <h2>OTROS ANTECEDENTES</h2>
                                  <h3>Participación u organización de eventos CyT</h3>
                                </div>                                
                                <!-- Participación u organización de eventos CyT -->
                    				    <div class="form-group">
                    				        <label for="inputName">Estancias y pasantías</label>
                    				        <input type="text" class="form-control"  placeholder="Participación u organización de eventos CyT">
                    				    </div> 

                                <!-- Membresías, redes y/o programas de cooperación -->

                                <div class="form-group">
                                  <h3>Membresías, redes y/o programas de cooperación</h3>
                                </div>             				
                                <!-- Membresías n asocianiones C-T y/o profesionales -->                
                                <div class="form-group">
                                    <label for="inputApellido">Membresías n asocianiones C-T y/o profesionales</label>
                                    <input type="text" class="form-control"  placeholder="Membresías n asocianiones C-T y/o profesionales">
                                </div>
                                <!-- Participación en redes temáticas o institucionales --> 
                                <div class="form-group">
                                    <label for="Sexo">Participación en redes temáticas o institucionales</label>
                                    <input type="text" class="form-control"  placeholder="Participación en redes temáticas o institucionales">
                                </div>
                                <!-- Coordinación de proyectos de cooperación académica o  C-T --> 
                                <div class="form-group">
                                    <label for="Estado">Coordinación de proyectos de cooperación académica o  C-T</label>
                                    <input type="text" class="form-control"  placeholder="Coordinación de proyectos de cooperación académica o  C-T">
                                </div>

                                <!-- PREMIOS Y/O DISTINCIONES -->

                                <div class="form-group">
                                    <h3>Premios y/o distinciones</h3>
                                </div>   
                                <!-- Premios y/o distinciones --> 
                                <div class="form-group">
                                    <label for="Estado">Premios y/o distinciones</label>
                                    <input type="text" class="form-control"  placeholder="Premios y/o distinciones">
                                </div>

                                  <!-- OTROS ANTECEDENTES --> 

                                <div class="form-group">
                                    <h3>Otros Antecedentes</h3>
                                </div> 
                                
                                <!--Dato Académico --> 
                                <div class="form-group">
                                    <label for="Estado">Dato Académico</label>
                                    <input type="text" class="form-control"  placeholder="Dato Académico">
                                </div>
                                <!-- Curriculum Vitae --> 
                                <div class="form-group">
                                    <label for="Estado">Curriculum Vitae</label>
                                    <input type="text" class="form-control"  placeholder="Curriculum Vitae">
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
