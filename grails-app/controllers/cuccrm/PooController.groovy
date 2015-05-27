package cuccrm
import grails.transaction.Transactional
class PooController {
  
    def index() {
       def numeros=[1,2,3,4,5]
       def meses=[Ene:31,Feb:28,Mar:31,Abr:30]
       def  colores=[java.awt.Color.BLACK,java.awt.Color.WHITE]
       def arreglo=[[1,2],[true,false],['Hola','Mundo']]
      
     /* numeros.each(){
          println it*2+1
      }*/
      /* imprimirTodo1(numeros)
       imprimirTodo1(meses)
       imprimirTodo1(colores)
       imprimirTodo1(arreglo)*/  
      def mibebida=new Cafe()
       mibebida=new Leche(mibebida)
       mibebida=new Canela(mibebida)
       mibebida=new Crema(mibebida)
      
     println mibebida.descripcion()
     println mibebida.precio()
    render text: "<h1>ok </h1>"
        
    } 
    
  def imprimirTodo(contenedor){
        for (item in contenedor)
        {
            println item
            
        }
    }

   def imprimirTodo1(contenedor){
        contenedor.each(){
            println it
        }
    }
abstract class  Bebida{
  abstract precio()
  abstract descripcion()    
}
    
 class Cafe extends Bebida{
     def precio(){return 3000}
     def descripcion(){return "Cafe"}
 }  
  class Te extends Bebida{
     def precio(){return 1500}
     def descripcion(){return "Te"}
 }  
 abstract class Adicional extends Bebida{//decorador
     Bebida bebida
     
 }
 class Leche extends Adicional{
     def Leche(Bebida b){
         this.bebida=b
     }
     def precio(){return bebida.precio()+800}
     def descripcion(){return bebida.descripcion()+" Con Leche"}
     
 }
 class Canela extends Adicional{
     def Canela(Bebida b){
         this.bebida=b
     }
     def precio(){return bebida.precio()+100}
     def descripcion(){return bebida.descripcion()+" Con Canela"}
     
 } 
  class Crema extends Adicional{
     def Crema(Bebida b){
         this.bebida=b
     }
     def precio(){return bebida.precio()+200}
     def descripcion(){return bebida.descripcion()+" Con Crema"}
     
 }
 
}
