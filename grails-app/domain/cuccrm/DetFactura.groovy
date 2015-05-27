 package cuccrm

class DetFactura {
    float cantidad
    float precio
    Long idEstadoDetFactura
    Byte eliminado
    
    static belongsTo =[encfactura:EncFactura,producto:Producto]
    
    static mapping ={
       table 'det_facturas' 
       version false
    }
    static constraints = {
        cantidad(nullable: false,validator :{if (it >0) return true else return false})
        precio(nullable: false,validator :{ if (it >0) return true  else return false})  
        
    }
}
