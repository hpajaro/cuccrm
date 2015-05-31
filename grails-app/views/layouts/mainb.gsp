<!DOCTYPE html>
<html lang="es">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Bootstrap 3 Admin</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
                <link  href="${resource(dir: 'js/AdminTemplate/css', file: 'bootstrap.min.css')}" rel="stylesheet" />
		
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
                 <link  href="${resource(dir: 'js/AdminTemplate/css', file: 'styles.css')}" rel="stylesheet" />		
                <g:layoutHead/>		
	</head>
	<body>
         
<!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Acme S.A.</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#"><i class="glyphicon glyphicon-user"></i> ${session["nombre"]} <span class="caret"></span></a>
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">My Profile</a></li>
                    </ul>
                </li>
                <li><a href="/cuccrm/Login/cerrarSesion"><i class="glyphicon glyphicon-lock"></i> Cerrar Sesión</a></li>
            </ul>
        </div>
    </div>
    <!-- /container -->
</div>
<!-- /Header -->

<!-- Main -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <!-- Left column -->
            <a href="#"><strong><i class="glyphicon glyphicon-wrench"></i> Tools</strong></a>

            <hr>
            <a style=" margin-left:15px" href="/cuccrm/Panel"><i class="glyphicon glyphicon-home"></i> Inicio</a>
            <ul class="nav nav-stacked">
                <li class="nav-header"> <a href="#" data-toggle="collapse" data-target="#userMenu">Operación <i class="glyphicon glyphicon-chevron-right"></i></a>
                    <ul class="nav nav-stacked collapse " id="userMenu">
                        <li class="active"></li>
                        <li><a href="#"><i class="glyphicon glyphicon-briefcase"></i> Productos </a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-cog"></i> Facturas</a></li>
                 
                    </ul>
                </li>
                <li class="nav-header"> <a href="#" data-toggle="collapse" data-target="#menu2"> Admintración <i class="glyphicon glyphicon-chevron-right"></i></a>

                    <ul class="nav nav-stacked collapse" id="menu2">
                        <li> <a href="/cuccrm/Usuario"><i class="glyphicon glyphicon-option-horizontal"></i> Usuarios</a>
                        </li>
                        <li><a href="/cuccrm/Rol"><i class="glyphicon glyphicon-option-horizontal"></i> Roles</a>
                        </li>
                        <li><a href="/cuccrm/Opcion"><i class="glyphicon glyphicon-option-horizontal"></i> Opciones</a>
                        </li>
                        <li><a href="/cuccrm/Operacion"><i class="glyphicon glyphicon-option-horizontal"></i> Operaciones</a>
                        </li>
                        <li><a href="/cuccrm/RolUsuario"><i class="glyphicon glyphicon-option-horizontal"></i> Roles/Usuarios</a>
                        </li>
                        <li><a href="/cuccrm/Parametro" ><i class="glyphicon glyphicon-option-horizontal"></i> Parámetros</a>
                        </li>
                    </ul>
                </li>
           
            </ul>

       

       
        </div>
        <!-- /col-3 -->
        <div class="col-sm-9">

            <!-- column 2 -->
            <ul class="list-inline pull-right">
                <li><a href="#"><i class="glyphicon glyphicon-cog"></i></a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-comment"></i><span class="count">3</span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">1. Is there a way..</a></li>
                        <li><a href="#">2. Hello, admin. I would..</a></li>
                        <li><a href="#"><strong>All messages</strong></a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="glyphicon glyphicon-user"></i></a></li>
                <li><a title="Add Widget" data-toggle="modal" href="#addWidgetModal"><span class="glyphicon glyphicon-plus-sign"></span> Add Widget</a></li>
            </ul>
            <a href="#"><strong><i class="glyphicon glyphicon-dashboard"></i> My Dashboard</strong></a>
            <hr>

            <div class="row">
                <!-- center left-->
                <div class="col-md-9">
                     <g:layoutBody/>
                </div>
                <!--/col-->              
            </div>
            <!--/row-->

            <hr>

         
        </div>
        <!--/col-span-9-->
    </div>
</div>
<!-- /Main -->

<footer class="text-center">Pie de Pagina</strong></a></footer>

<div class="modal" id="addWidgetModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Add Widget</h4>
            </div>
            <div class="modal-body">
                <p>Add a widget stuff here..</p>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
                <a href="#" class="btn btn-primary">Save changes</a>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>
<!-- /.modal -->
	<!-- script references -->
               <script src="${resource(dir: 'js', file: 'jquery-2.1.4.js')}"></script>		
	       <script src="${resource(dir: 'js/AdminTemplate/js', file: 'bootstrap.min.js')}"></script>
               <script src="${resource(dir: 'js/AdminTemplate/js', file: 'scripts.js')}"></script> 
               <script src="${resource(dir: 'js', file: 'bootbox.min.js')}"></script>
	</body>
</html>