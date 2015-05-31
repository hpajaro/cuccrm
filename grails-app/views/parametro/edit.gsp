<%@ page import="cuccrm.Parametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'parametro.label', default: 'Parametro')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="edit-parametro" class="content scaffold-edit" role="main">
			<h2>Edición de Parametros</h2>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${parametroInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${parametroInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
                        
			<g:form class="form-horizontal" url="[resource:parametroInstance, action:'update']" method="PUT" >
				<g:actionSubmit class="btn btn-sm btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                        
                                <button type="reset" class="btn btn-sm" style="margin-left:3px;" onclick="history.go(-1)"><i class="icon-remove"></i>&nbsp;Regresar</button>
                                 <hr style="margin-top:3px"> 
				<fieldset class="form">
                                      <g:set var="xronly" value="false" scope="request"/>
					<g:render template="form"/>
				</fieldset>
				
			</g:form>
		</div>
	</body>
</html>
