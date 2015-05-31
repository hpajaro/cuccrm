
   
 <a class="btn btn-sm btn-success" href="/cuccrm/${xcontroler}/edit/${xid}" >
     <i class="icon-edit icon-white"></i>&nbsp;Editar</a> 
  
    <a href="#" class="btn btn-danger btn-sm" 
      onclick='bootbox.confirm("Esta seguro de Borrar este registro",
        function(result){
           if (result) window.location.href="/cuccrm/${xcontroler}/delete/${params.id}"
        })'>                                                     
      <i class="icon-trash icon-white"></i>Borrar</a>				

 <div class="btn-group">
    <a href="#" class="btn btn-sm  btn-default" >Acciones</a>
   <button class="btn btn-sm dropdown-toggle" data-toggle="dropdown">
   <span class="caret"></span></button>
    <ul class="dropdown-menu">
       <li align="center">Accion1 </li>    
   </ul>										
 </div>
   <a  class="btn btn-sm btn-default" href="/cuccrm/${xcontroler}/index/${xid}">Regresar</a>
<hr style="margin-top:3px"> 
