<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainc">
		<g:set var="entityName" value="${message(code: 'valorParametro.label', default: 'ValorParametro')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	
		<div id="create-valorParametro" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
			<g:form class="form-horizontal" role="form" url="[resource:valorParametroInstance, action:'save']" >
                             <g:set var="xcontroler" value="ValorParametro" scope="request"/>   
                             <g:set var="xid" value="${params.xid}" scope="request"/>   
                             <g:render template="/general/botonesShow"/>
				<fieldset class="form">
                                     <g:set var="xronly" value="true" scope="request"/>
					<g:render template="form"/>
				</fieldset>
				
			</g:form>
		</div>
	</body>
</html>
