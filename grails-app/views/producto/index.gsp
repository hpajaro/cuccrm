
<%@ page import="cuccrm.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-producto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="refProducto" title="${message(code: 'producto.refProducto.label', default: 'Ref Producto')}" />
					
						<g:sortableColumn property="nombreProducto" title="${message(code: 'producto.nombreProducto.label', default: 'Nombre Producto')}" />
					
						<g:sortableColumn property="idTipoProducto" title="${message(code: 'producto.idTipoProducto.label', default: 'Id Tipo Producto')}" />
					
						<g:sortableColumn property="idCategoriaProducto" title="${message(code: 'producto.idCategoriaProducto.label', default: 'Id Categoria Producto')}" />
					
						<g:sortableColumn property="idEstadoProducto" title="${message(code: 'producto.idEstadoProducto.label', default: 'Id Estado Producto')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'producto.eliminado.label', default: 'Eliminado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productoInstanceList}" status="i" var="productoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productoInstance.id}">${fieldValue(bean: productoInstance, field: "refProducto")}</g:link></td>
					
						<td>${fieldValue(bean: productoInstance, field: "nombreProducto")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "idTipoProducto")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "idCategoriaProducto")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "idEstadoProducto")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "eliminado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
