<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inscripción duplicada</title>
<link rel="stylesheet"
	href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />
 <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Archivo+Narrow:400,700,700italic,400italic">
</head>
<body>

	<div class="container">
	<img src="resources/images/marca.png">
		<div class="panel panel-default">
			<div class="panel-heading">
			<div class="panel-heading">
				<div class="contenido2"><h1 class="universidadFondo">Error</h1></div>	
			</div>
			<div class="panel-body">
				Ocurrió un error inesperado. Por favor vuelta a intentarlo.
			</div>
			<div class="panel-body">
				<p>
					<a href="${pageContext.request.contextPath}/cursos"> Volver a cursos</a>
				</p>
			</div>
			<!--panel body-->
		</div>
		<!--panel heading-->
	</div>
	<!--panel panel-default-->
	</div>
	<!--container-->
	<footer>
            <div class="col-lg-6 col-lg-offset-3">
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