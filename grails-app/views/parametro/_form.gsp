<%@ page import="cuccrm.Parametro" %>

    <div class="form-group">	
    <label class="control-label col-sm-3" for="atributo">
		<g:message code="parametro.atributo.label" default="Atributo" />
		
	</label>
        <div class="col-sm-8">
	  <g:textField class="form-control" name="atributo" value="${parametroInstance?.atributo}" disabled="${xronly}"/>
        </div>
   </div> 


<div class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'descripcion', 'error')} ">
 <div class="form-group">	
    <label class="control-label col-sm-3" for="descripcion">
		<g:message code="parametro.descripcion.label" default="Descripcion" />
		
	</label>
         <div class="col-sm-8">
	<g:textField  class="form-control" name="descripcion" value="${parametroInstance?.descripcion}" disabled="${xronly}" />
        </div>
         </div>
 </div>

<div class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'tipoParametro', 'error')} ">
<div class="form-group">
    <label class="control-label col-sm-3" for="tipoParametro">
		<g:message code="parametro.tipoParametro.label" default="Tipo Parametro" />
		
	</label>
        <div class="col-sm-8">
	<g:select name="tipoParametro" from="${parametroInstance.constraints.tipoParametro.inList} "
                  value="${parametroInstance?.tipoParametro}" 
                  valueMessagePrefix="parametro.tipoParametro" 
                  noSelection="['': '']" 
                  disabled="${xronly}" />
        </div>
        </div>
</div>
<div class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'estadoParametro', 'error')} ">
<div class="form-group">	
    <label class="control-label col-sm-3"  for="estadoParametro">
		<g:message code="parametro.estadoParametro.label" default="Estado Parametro" />
		
	</label>
        <div class="col-sm-8">
	<g:select name="estadoParametro" from="${parametroInstance.constraints.estadoParametro.inList}" 
                 value="${parametroInstance?.estadoParametro}" 
                 valueMessagePrefix="parametro.estadoParametro" 
                 noSelection="['': '']"
                 disabled="${xronly}" />
        </div>
        </div>
</div>
  <g:hiddenField  id ="eliminado" name="eliminado" value="${parametroInstance?.eliminado?:0}" />
<g:if test="${parametroInstance.id !=null}" >

     <iframe id="ifvalp" src="/cuccrm/valorParametro/index/${parametroInstance.id}" style="border:0;width:100%;" scrolling="no"></iframe>  
     <script>
       IFRAME_DETALLE=document.getElementById("ifvalp"); 
     </script>
</g:if>  
