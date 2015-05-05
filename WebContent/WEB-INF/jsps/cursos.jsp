<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Archivo+Narrow:400,700,700italic,400italic">
<meta charset="UTF-8">
<title>Inscribirse a un curso</title>
<link rel="stylesheet"
	href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />
<body>

	<div class="container">
		<img src="resources/images/marca.png">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="contenido2">
					<h1 class="universidadFondo">Grilla de Cursos a Distancia</h1>
				</div>
			</div>
			<div class="panel-body">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Título</th>
							<th>Inicio</th>
							<th>Duración</th>
							<th>Profesor</th>
							<th>URL</th>
						</tr>
					</thead>
					<c:forEach var="curso" items="${cursos}">
						<tr>

							<td><p>
									<span title="${curso.cur_descripcion}"><c:out
											value="${curso.cur_titulo}"></c:out></span>
								</p></td>

							<td><p>
									<c:out value="${curso.cur_inicio}"></c:out>
								</p></td>
							<td><p>
									<c:out value="${curso.cur_duracion} horas"></c:out>
								</p></td>
							<td><p>
									<c:out value="${curso.cur_profesor}"></c:out>
								</p></td>
							<td><p>
									<c:out value="${curso.cur_url}"></c:out>
								</p></td>
							<td><a
								href="${pageContext.request.contextPath}/verificacion?cur_id=${curso.cur_id}">
									<button type="button" class="btn btn-warning">
										Inscribirse</button>
							</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<!--panel body-->
		</div>
		<!--panel heading-->
	</div>
	<!--panel panel-default-->


</body>
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
</html>