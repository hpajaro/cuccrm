package cuccrm

class Producto {
     String refProducto 
     String nombreProducto
     Long   idTipoProducto
     Long   idCategoriaProducto
     Long   idEstadoProducto
     byte   eliminado
   
    static hasMany=[detfactura:DetFactura]
       
    static mapping ={
        table 'productos'
        version false
    } 
    static constraints = {
       refProducto          nullable:false, maxSize:20 
       nombreProducto       nullable:false,maxSize:150 
       idTipoProducto       nullable:true
       idCategoriaProducto  nullable:true
       idEstadoProducto     nullable:true
       
    }
    
    String  toString(){        
        return nombreProducto        
    } 
}
