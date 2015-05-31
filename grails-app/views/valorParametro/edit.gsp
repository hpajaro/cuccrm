<%@ page import="cuccrm.ValorParametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainc">
		<g:set var="entityName" value="${message(code: 'valorParametro.label', default: 'ValorParametro')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		
            
		<div id="edit-valorParametro" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${valorParametroInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${valorParametroInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
                        
			<g:form url="[resource:valorParametroInstance, action:'update']" method="PUT" >
					<g:actionSubmit class="btn btn-sm btn-primary" action="update" 
                                                        value="${message(code: 'default.button.update.label',
                                                        default: 'Update')}" />
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
