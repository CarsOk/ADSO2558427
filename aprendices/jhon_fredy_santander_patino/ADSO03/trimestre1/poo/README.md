<h2 align=center>POO (programación orientada a objetos)</h2>

Un paradigma **es la manera de pensar** en una solución a un problema. 

<h3 align=center>Clase</h3>

Un clase es una estructura, un molde. Las clases **siempre lleva su inicial en mayuscula**

<h3 align=center>Instancia</h3>

Es la extensión de una clase.

**Ejemplo:**

```
void main(){
    Person p;
    //La siguiente linea de codigo de abajo es una instancia (new Person)
    p = new Person();
}
class Person {
}
```

<h3 align=center>Objeto</h3>

Es una unidad de programación que tiene un estado y comprotamiento, sirve para crear una instancia de un molde o clase.

<h3 align=center>Dart</h3>

Damos introducción a dart, que es un oriento a objetos.

<h2 align=center>Actividad de introducción</h2>

Escribir en dart una clase con 5 objetos con sus instancias y atributos.


```
void main() {
  
  Persona nom1 = new Persona();
  
  nom1.nombre = "Pablo";
  nom1.cedula = 12345;
  print(nom1.nombre);
  
  Persona nom2 = new Persona();
  
  nom2.nombre = "Sasha";
  nom2.cedula = 54321;
  print(nom2.nombre);
  
  Persona nom3 = new Persona();
  
  nom3.nombre = "Ostin";
  nom3.cedula = 24680;
  print(nom3.nombre);
  
}
class Persona{
  String? nombre;
  int? cedula;
}
```
