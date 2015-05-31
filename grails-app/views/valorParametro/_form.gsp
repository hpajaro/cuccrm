<%@ page import="cuccrm.ValorParametro" %>
<div id="detContent">
<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'valor', 'error')} ">
<div class="form-group">	
    <label class="control-label col-sm-3" for="valor">
		<g:message code="valorParametro.valor.label" default="Valor" />
		
	</label>
         <div class="col-sm-8">
	<g:textField class="form-control" name="valor" value="${valorParametroInstance?.valor}" disabled="${xronly}" />
        </div>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'orden', 'error')} ">
<div class="form-group">
    <label class="control-label col-sm-3" for="orden">
		<g:message code="valorParametro.orden.label" default="Orden" />
		
	</label>
         <div class="col-sm-8">
	<g:textField class="form-control" name="orden" value="${valorParametroInstance?.orden}" disabled="${xronly}" />
        </div>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'descValParametro', 'error')} ">
<div class="form-group">
    <label  class="control-label col-sm-3" for="descValParametro">
		<g:message code="valorParametro.descValParametro.label" default="Desc Val Parametro" />
		
	</label>
         <div class="col-sm-8">
	<g:textField class="form-control" name="descValParametro" maxlength="100" value="${valorParametroInstance?.descValParametro}" disabled="${xronly}" />
         </div>
</div>  
</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'estadoValorParametro', 'error')}  ">
<div class="form-group">
    <label class="control-label col-sm-3" for="estadoValorParametro">
		<g:message code="valorParametro.estadoValorParametro.label" default="Estado Valor Parametro" />
		
	</label>
         <div class="col-sm-8">
	<g:select  name="estadoValorParametro" from="${valorParametroInstance.constraints.estadoValorParametro.inList}"
                 value="${valorParametroInstance?.estadoValorParametro}"
                 valueMessagePrefix="valorParametro.estadoValorParametro"
                 noSelection="['': '']"
                 disabled="${xronly}"
                 />
         </div>
</div>  
</div>

 <g:hiddenField  id ="eliminado" name="eliminado" value="${parametroInstance?.eliminado?:0}" />
 </div> 
 <script>                    
                    <!-- calcudebugger;la el alto del bloque htm del detalle de encaberzado respectivo --> 
     
                  
                    if (parent.IFRAME_DETALLE !=null)parent.IFRAME_DETALLE.height=500;

 </script>
