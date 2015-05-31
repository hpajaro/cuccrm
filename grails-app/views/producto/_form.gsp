<%@ page import="cuccrm.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'refProducto', 'error')} ">
	<label for="refProducto">
		<g:message code="producto.refProducto.label" default="Ref Producto" />
		
	</label>
	<g:textField name="refProducto" maxlength="20" value="${productoInstance?.refProducto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombreProducto', 'error')} ">
	<label for="nombreProducto">
		<g:message code="producto.nombreProducto.label" default="Nombre Producto" />
		
	</label>
	<g:textField name="nombreProducto" maxlength="150" value="${productoInstance?.nombreProducto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'idTipoProducto', 'error')} ">
	<label for="idTipoProducto">
		<g:message code="producto.idTipoProducto.label" default="Id Tipo Producto" />
		
	</label>
	<g:field name="idTipoProducto" type="number" value="${productoInstance.idTipoProducto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'idCategoriaProducto', 'error')} ">
	<label for="idCategoriaProducto">
		<g:message code="producto.idCategoriaProducto.label" default="Id Categoria Producto" />
		
	</label>
	<g:field name="idCategoriaProducto" type="number" value="${productoInstance.idCategoriaProducto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'idEstadoProducto', 'error')} ">
	<label for="idEstadoProducto">
		<g:message code="producto.idEstadoProducto.label" default="Id Estado Producto" />
		
	</label>
	<g:field name="idEstadoProducto" type="number" value="${productoInstance.idEstadoProducto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'detfactura', 'error')} ">
	<label for="detfactura">
		<g:message code="producto.detfactura.label" default="Detfactura" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productoInstance?.detfactura?}" var="d">
    <li><g:link controller="detFactura" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="detFactura" action="create" params="['producto.id': productoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'detFactura.label', default: 'DetFactura')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="producto.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${productoInstance.eliminado}" required=""/>
</div>

