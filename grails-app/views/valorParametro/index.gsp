
<%@ page import="cuccrm.ValorParametro" %>
<!DOCTYPE html>
<html>
	<head>   
		<meta name="layout" content="mainc">
		<g:set var="entityName" value="${message(code: 'valorParametro.label', default: 'ValorParametro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="detalleconten">
		<div id="list-valorParametro" class="content scaffold-list" role="main">
			<h2>Lista Valor Parametros</h2>
                         <g:set var="xcontroler" value="ValorParametro" scope="request"/>
                         <g:set var="xid" value="${params.id}" scope="request"/>
                         <g:render template="/general/botonesIndex"/>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="valor" title="${message(code: 'valorParametro.valor.label', default: 'Valor')}" />
					
						<g:sortableColumn property="orden" title="${message(code: 'valorParametro.orden.label', default: 'Orden')}" />
					
						<g:sortableColumn property="descValParametro" title="${message(code: 'valorParametro.descValParametro.label', default: 'Desc Val Parametro')}" />
					
						<g:sortableColumn property="estadoValorParametro" title="${message(code: 'valorParametro.estadoValorParametro.label', default: 'Estado Valor Parametro')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'valorParametro.eliminado.label', default: 'Eliminado')}" />
					
						<th><g:message code="valorParametro.parametro.label" default="Parametro" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${valorParametroInstanceList}" status="i" var="valorParametroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${valorParametroInstance.id}" params='[xid:"${params.id}"]'>${fieldValue(bean: valorParametroInstance, field: "valor")}</g:link></td>
					
						<td>${fieldValue(bean: valorParametroInstance, field: "orden")}</td>
					
						<td>${fieldValue(bean: valorParametroInstance, field: "descValParametro")}</td>
					
						<td>${fieldValue(bean: valorParametroInstance, field: "estadoValorParametro")}</td>
					
						<td>${fieldValue(bean: valorParametroInstance, field: "eliminado")}</td>
					
						<td>${fieldValue(bean: valorParametroInstance, field: "parametro")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${valorParametroInstanceCount ?: 0}" />
			</div>
		</div>
                </div>
                 <script>                    
                    <!-- calcudebugger;la el alto del bloque htm del detalle de encaberzado respectivo --> 
                   
                   var contenido= document.getElementById("detalleconten"); 
                    if(contenido.offsetHeight)          {var altura=contenido.offsetHeight;}
                    else if(contenido.style.pixelHeight){var altura=contenido.style.pixelHeight;}
                  
                    if (parent.IFRAME_DETALLE !=null)parent.IFRAME_DETALLE.height=altura+50;

               </script>
	</body>
</html>
