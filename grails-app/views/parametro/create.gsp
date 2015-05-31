<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'parametro.label', default: 'Parametro')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

	
		<div id="create-parametro" class="content scaffold-create" role="main">
			<h2>Manejo de Parametros </h2>
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
			<g:form class="form-horizontal" role="form"  url="[resource:parametroInstance, action:'save']" >
                          <g:set var="xcontroler" value="Parametro" scope="request"/>
			    <g:render template="/general/botonesCreate"/>
                           
                           <fieldset class="form">
                                        <g:set var="xronly" value="false" scope="request"/>
					<g:render template="form"/>
			    </fieldset>                             
			</g:form>
                    </div>    
		
	</body>
</html>
