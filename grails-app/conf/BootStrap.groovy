import  cuccrm.*
class BootStrap {

   def init = { servletContext ->
        if (Cliente.count() == 0) {
            new Cliente(identificacion:'72135240',nombreCliente:'Hernan Pajaro' ).save()
            new Cliente(identificacion:'13458993',nombreCliente:'Pedro Paramo').save()  
            
        }
    }
    def destroy = {
    }
}
