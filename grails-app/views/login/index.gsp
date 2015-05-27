<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autrenticacion</title>
           <link  href="${resource(dir: 'js/AdminTemplate/css', file: 'bootstrap.min.css')}" rel="stylesheet" />
	  <link  href="${resource(dir: 'js/AdminTemplate/css', file: 'styles.css')}" rel="stylesheet" />		
    <style>
      body {
       padding-top:40px;
         padding-bootom:40px;
      
      }
      .login {
      max-width:330px;
      padding:15px;
      margin:0 auto;
      } 
      #avatar {
         width 100px;
         height:100px;
         margin:0px auto 10px;
         display:block;
         border-radius:50px;
      
      }
       #contenedor {       
       max-width :340px;    
        -webkit-box-shadow: 0px 0px 18px 0px rgba(48,50,50,0.48);
        -moz-shadow:        0px 0px 18px 0px rgba(48,50,50,0.48);
        box-shadow :        0px 0px 18px 0px rgba(48,50,50,0.48);
        border-radius: 6%;
       }
    </style>
    </head>
    <body>
        <div class="container well " id="contenedor">
          <div class="row">
           <img src="http://localhost:8080/cuccrm/images/avatar.png" id="avatar" >
          </div>
          <form class="login" action="/cuccrm/login/autenticacion" method="POST">
              <div class="form-group">
                   <input  type="text" class="form-control"  name="usuario" required  placeholder="Usuario">
              </div>
               <div class="form-group">
                   <div class="input-group">
                     <input  type="password" class="form-control"  name="password" required  placeholder="Contraseña">
                     <span id="show-hide-passwd" action="hide" class="input-group-addon glyphicon  glyphicon-eye-close"></span>
                   </div>
              </div>
              <div class="form-group">
                  <button type="submit" class="btn btn-lg btn-primary btn-block"   > Iniciar Sesión</buttom>
               </div>
          </form>
        </div>
          <script src="${resource(dir: 'js', file: 'jquery-2.1.4.js')}"></script>		
	  <script src="${resource(dir: 'js/AdminTemplate/js', file: 'bootstrap.min.js')}"></script>
          <script src="${resource(dir: 'js/AdminTemplate/js', file: 'scripts.js')}"></script>              
    </body>
</html>