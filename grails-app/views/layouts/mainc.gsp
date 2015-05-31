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
         
<!-- Main -->
<div class="container-fluid">
    <div class="row">
        <hr>
         <div class="col-md-9">
          <g:layoutBody/>
         </div>
        </div>
        <!--/col-span-9-->
    </div>
</div>
<!-- /Main -->


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