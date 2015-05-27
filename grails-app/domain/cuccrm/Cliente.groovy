package cuccrm

class Cliente {
     String identificacion
     String nombreCliente 
     String dirCliente
     String emailCliente
     String telCliente
     Long idTipoCliente
     Long idEstadocliente
     Byte eliminado
    
    static hasMany=[encfactura:EncFactura]
    
       static mapping ={
       table 'clientes' 
       version false
       }
    static constraints = {
       identificacion  nullable:true,maxSize:20
       nombreCliente   nullable:true,maxSize:150,blank:false
       dirCliente      nullable:true,maxSize:100
       emailCliente    nullable:true,maxSize:100
       telCliente      nullable:true,maxSize:50
       idTipoCliente   nullable:true
       idEstadocliente nullable:true
       eliminado nullable:true
    }
    String  toString(){
        return nombreCliente        
    }
}
