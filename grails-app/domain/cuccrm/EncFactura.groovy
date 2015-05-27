package cuccrm

class EncFactura {
      String  numFactura
      Date    fecha
      String  direccion
      Long    idEstadoEncFactura  
      Byte    eliminado
      
    static hasMany=[detfactura:DetFactura] 
    static belongsTo =[cliente:Cliente]
     static mapping ={
       table 'enc_facturas' 
       version false
    }
    static constraints = {
        numFactura                  nullable:false,maxSize:10 
        fecha                       nullable:true
        direccion                   nullable:true,maxSize:100
        idEstadoEncFactura          nullable:true
    }
}
