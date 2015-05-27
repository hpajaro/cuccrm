
<%@ page import="cuccrm.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-producto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list producto">
			
				<g:if test="${productoInstance?.refProducto}">
				<li class="fieldcontain">
					<span id="refProducto-label" class="property-label"><g:message code="producto.refProducto.label" default="Ref Producto" /></span>
					
						<span class="property-value" aria-labelledby="refProducto-label"><g:fieldValue bean="${productoInstance}" field="refProducto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.nombreProducto}">
				<li class="fieldcontain">
					<span id="nombreProducto-label" class="property-label"><g:message code="producto.nombreProducto.label" default="Nombre Producto" /></span>
					
						<span class="property-value" aria-labelledby="nombreProducto-label"><g:fieldValue bean="${productoInstance}" field="nombreProducto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.idTipoProducto}">
				<li class="fieldcontain">
					<span id="idTipoProducto-label" class="property-label"><g:message code="producto.idTipoProducto.label" default="Id Tipo Producto" /></span>
					
						<span class="property-value" aria-labelledby="idTipoProducto-label"><g:fieldValue bean="${productoInstance}" field="idTipoProducto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.idCategoriaProducto}">
				<li class="fieldcontain">
					<span id="idCategoriaProducto-label" class="property-label"><g:message code="producto.idCategoriaProducto.label" default="Id Categoria Producto" /></span>
					
						<span class="property-value" aria-labelledby="idCategoriaProducto-label"><g:fieldValue bean="${productoInstance}" field="idCategoriaProducto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.idEstadoProducto}">
				<li class="fieldcontain">
					<span id="idEstadoProducto-label" class="property-label"><g:message code="producto.idEstadoProducto.label" default="Id Estado Producto" /></span>
					
						<span class="property-value" aria-labelledby="idEstadoProducto-label"><g:fieldValue bean="${productoInstance}" field="idEstadoProducto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.detfactura}">
				<li class="fieldcontain">
					<span id="detfactura-label" class="property-label"><g:message code="producto.detfactura.label" default="Detfactura" /></span>
					
						<span class="property-value" aria-labelledby="detfactura-label"><g:link controller="detFactura" action="show" id="${productoInstance?.detfactura?.id}">${productoInstance?.detfactura?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.eliminado}">
				<li class="fieldcontain">
					<span id="eliminado-label" class="property-label"><g:message code="producto.eliminado.label" default="Eliminado" /></span>
					
						<span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${productoInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
