<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inscribirse a un curso</title>
<link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />

<body>

	<div class="container">
		<img src="resources/images/marca.png">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="contenido2"><h1 class="universidadFondo">Grilla de Cursos a Distancia</h1></div>	
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
									<span title="${curso.cur_descripcion}"><c:out value="${curso.cur_titulo}"></c:out></span>
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
							<td>
							
								<a href="${pageContext.request.contextPath}/verificacion?cur_id=${curso.cur_id}">
									<button type="button" class="btn btn-warning">
										Inscribirse
									</button>
								</a>

							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<!--panel body-->
		</div>
		<!--panel heading-->
	</div>
	<!--panel panel-default-->


<div class="row-fluid">
  <div class="span6 offset6">
    <div id="maincontent" class="span8"> 
      
      <form id="registration-form" class="form-horizontal">
       
          <h1>Sample Registration form <small>(Fill up the forms to get register)</small></h1>
          <br/>
          
          <div class="form-control-group">
            <label class="control-label" for="name">Your Name</label>
            <div class="controls">
              <input type="text" class="input-xlarge" name="name" id="name">
            </div>
          </div>
          
          <div class="form-control-group">
            <label class="control-label" for="name">User Name</label>
            <div class="controls">
              <input type="text" class="input-xlarge" name="username" id="username">
            </div>
          </div>
          
          <div class="form-control-group">
            <label class="control-label" for="name">Password</label>
            <div class="controls">
              <input type="password" class="input-xlarge" name="password" id="password">
            </div>
          </div>
          
          <div class="form-control-group">
            <label class="control-label" for="name"> Retype Password</label>
            <div class="controls">
              <input type="password" class="input-xlarge" name="confirm_password" id="confirm_password">
            </div>
          </div>
          
          <div class="form-control-group">
            <label class="control-label" for="email">Email Address</label>
            <div class="controls">
              <input type="text" class="input-xlarge" name="email" id="email">
            </div>
          </div>
          <div class="form-control-group">
            <label class="control-label" for="message">Your Address</label>
            <div class="controls">
              <textarea class="input-xlarge" name="address" id="address" rows="3"></textarea>
            </div>
          </div>
          
          <div class="form-control-group">
            <label class="control-label" for="message"> Please agree to our policy</label>
            <div class="controls">
             <input id="agree" class="checkbox" type="checkbox" name="agree">
            </div>
          </div>
          
          <div class="form-actions">
            <button type="submit" class="btn btn-success btn-large">Register</button>
            <button type="reset" class="btn">Cancel</button>
          </div>
  
      </form>
    </div>
    <!-- .span --> 
  </div>
  <!-- .row -->

<script src="resources/bootstrap-3.3.4-dist/assets/js/jquery-1.7.1.min.js"></script> 
<script src="resources/bootstrap-3.3.4-dist/assets/js/jquery.validate.js"></script> 
<script src="resources/bootstrap-3.3.4-dist/assets/js/jquery.validate.min.js"></script> 
<script src="resources/bootstrap-3.3.4-dist/script.js"></script> 
	 
<script>
		addEventListener('load', prettyPrint, false);
		$(document).ready(function(){
		$('pre').addClass('prettyprint linenums');
			});
</script> 

</body>
</html>