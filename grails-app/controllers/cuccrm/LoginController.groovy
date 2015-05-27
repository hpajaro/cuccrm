package cuccrm

class LoginController {

    def index() { 
      render view:"index"
    }
    
    def autenticacion(){
        
        def password=params.password.encodeAsMD5()
        
        
    }
}
