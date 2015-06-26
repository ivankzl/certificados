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

                                <!-- DATOS PERSONALES -->

                                <div class="form-group">
                                    <h2>CURRICULUM VITAE</h2>
                                    <h3> Datos Personales</h3>
                                </div>                                
                                <!-- nombre -->
            				    <div class="form-group">
            				        <label for="inputName">Nombre</label>
            				        <input type="text" class="form-control"  placeholder="Nombre">
            				    </div>            				
                                <!-- apellido -->                
                                <div class="form-group">
                                    <label for="inputApellido">Apellido</label>
                                    <input type="text" class="form-control"  placeholder="Apellido">
                                </div>
                                <!-- sexo --> 
                                <div class="form-group">
                                    <label for="Sexo">Sexo </label>
                                    <select id="sexo" name="sexo">
                                       <option value="DNI">F</option>
                                       <option value="DU">M</option>
                                    </select>
                                </div>
                                <!-- estado civil --> 
                                <div class="form-group">
                                    <label for="Estado">Estado Civil</label>
                                    <select id="estado" name="estado">
                                       <option value="Casado">Casado/a</option>
                                       <option value="Soltero">Soltero/a</option>
                                       <option value="Divorciado">Divorciado/a</option>
                                    </select>
                                </div>
                                <!-- nacionalidad --> 
                                <div class="form-group">
                                    <label for="Estado">Nacionalidad</label>
                                    <select id="estado" name="estado">
                                       <option value="Casado">Casado/a</option>
                                       <option value="Soltero">Soltero/a</option>
                                       <option value="Divorciado">Divorciado/a</option>
                                    </select>
                                </div>
                                <!-- tipo de DNI -->
                                <div class="form-group">
                                    <label for="inputNumDoc">Tipo</label>
                                    <select id="tipoDNI" name="tipoDNI">
                                       <option value="DNI">DNI</option>
                                       <option value="DU">DU</option>
                                    </select>
                                </div>
                                <!-- Nro de documento -->
            				    <div class="form-group">
            				        <label for="inputNumDoc">N° Documento</label>
            				        <input type="text" class="form-control"  placeholder="N° Documento" >
            				    </div>
            				    <!-- cuil -->
            				    <div class="form-group">
            				        <label for="inputName">CUIL/CUIT</label>
            				        <input type="text" class="form-control"  placeholder="CUIL/CUIT">
            				    </div>            				
                                <!-- fecha de nacimiento -->                
                                <div class="form-group">
                                    <label for="inputName">Fecha de Nacimiento</label>
                                    <input type="date" name="fecha" max="2015-01-01" min="1980-01-01" placeholder="yyyy/mm/dd">
                                </div>
                                <!-- pais -->
                                <div class="form-group">
                                    <label for="inputNumDoc">Pais</label>
                                    <select id="tipoDNI" name="tipoDNI">
                                       <option value="DNI">DNI</option>
                                       <option value="DU">DU</option>
                                    </select>
                                </div>
                                <!-- provincia -->
                                <div class="form-group">
                                    <label for="inputNumDoc">Provincia:</label>
                                    <select id="tipoDNI" name="tipoDNI">
                                       <option value="DNI">DNI</option>
                                       <option value="DU">DU</option>
                                    </select>
                                </div>
                                <!-- departamento -->
                                <div class="form-group">
                                    <label for="inputNumDoc">Departamento:</label>
                                    <select id="tipoDNI" name="tipoDNI">
                                       <option value="DNI">DNI</option>
                                       <option value="DU">DU</option>
                                    </select>
                                </div>
                                <!-- domicilio --> 
            				    <div class="form-group">
            				         <label for="inputDomicilio">Domicilio</label>
            				         <input type="text" class="form-control" placeholder="Domicilio">
            				     </div>
                                
                                <!-- FORMACION ACADEMICA -->
                                <div class="form-group">
                                    <h2>FORMACION</h2>
                                    <h3>Formación Académica</h3>
                                </div>
                                <!-- Nivel Universitario de postgrado -->
                                <div class="form-group">
                                    <label for="inputName">Nivel Universitario de Postgrado</label>
                                    <input type="text" class="form-control"  placeholder="Nivel Universitario de Postgrado">
                                </div>
                                <!--  -->                
                                <div class="form-group">
                                    <label for="inputApellido">Nivel Universitario de Postgrado/ especialización</label>
                                    <input type="text" class="form-control"  placeholder="Nivel Universitario de Postgrado/ especialización">
                                </div>
                                
                                <!-- FORMACION COMPLEMENTARIA -->

                                <div class="form-group">
                                    <h3>Formación Complementaria</h3>
                                </div>
                                <!-- Especialidad certificada por org de salud -->
                                <div class="form-group">
                                    <label for="inputName">Especialidad certificada por organismo de salud</label>
                                    <input type="text" class="form-control"  placeholder="Especialidad certificada por organismo de salud">
                                </div>
                                <!-- Posdoctorado -->                
                                <div class="form-group">
                                    <label for="inputApellido">Posdoctorado</label>
                                    <input type="text" class="form-control"  placeholder="Posdoctorado">
                                </div>
                                <!-- Cursos de posgrado y/o capacitaciones extracurriculares -->                
                                <div class="form-group">
                                    <label for="inputApellido">Cursos de posgrado y/o capacitaciones extracurriculares</label>
                                    <input type="text" class="form-control"  placeholder="Cursos de posgrado y/o capacitaciones extracurriculares">
                                </div>
                                <!-- Idiomas -->                
                                <div class="form-group">
                                    <label for="inputApellido">Idiomas</label>
                                    <input type="text" class="form-control"  placeholder="Idiomas">
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
