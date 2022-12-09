# Dart, Objetos, Clases y Metodos

```
void main() {

  Person j = new Person (x:"Hombre", p: "Jose");
  
   j.apellido = "argote";
   j.edad = 17;
   print("el nombre es: ${j.nombre}");
   print("el sexo es: ${j.sexo}");
   print("la edad es: ${j.edad}");
   print("el nombre completo es: ${j.nombrecompleto()}");
   j.edadmas(numer2: 3);
   
  
  
   
          
}

  class Person{
   String? nombre,sexo,apellido;
   int? edad;
  
   Person({String? x, p}){
    nombre = x;
      sexo = p;
  }  
    String? nombrecompleto(){
     String nom = nombre! + apellido!;
      return nom;
    }  
     void edadmas ({int? numer2}){
      int w = edad! + numer2!;
       print ("la suma de la edad es $w");
      
}
}
```


```
void main() {
 Operacion z = new Operacion();

 z.number1 = 9.0;  
 z.number2 = 8.0;
  print("la suma es:${z.sumar()}");       
   (z.restar)();
 print("la multiplicacion es:${z.multiplicar()}");      



}
class Operacion{
  double? number1;
   double? number2; 
    double sumar(){
  double x = number1! + number2!;
  return x;
}     
  
 void restar(){
   void p = number1! - number2!;
   return p;
 }
   
 double multiplicar(){
   double c = number1! * number2!;
    return c;
 }
 }

 ```