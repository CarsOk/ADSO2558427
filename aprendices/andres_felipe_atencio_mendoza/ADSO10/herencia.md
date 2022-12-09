# Herencia

```
void main(){
   Conejo conejo = Conejo();
    conejo.nombre = "zimba";
     conejo.edad = 5;
   conejo.comida = "zanahoria";
   print("""
   El nombre es: ${conejo.nombre}
   La edad es: ${conejo.edad}
   Una de las comida que come es: ${conejo.comida}
  """);
  
  
   Leon leon = Leon();
    leon.nombre = "escar";
     leon.edad = 7;
   print("""
   El nombre es: ${leon.nombre}
   La edad  es: ${leon.edad}
  """);
  
  
   Hiena hiena = Hiena();
    hiena.nombre = "totuma";
     hiena.edad = 7;
      hiena.peso = "30 Kg";
   print("""
   El nombre es: ${hiena.nombre}
   La edad es: ${hiena.edad}
   El peso : ${hiena.peso}
  """);
  
  
   Hombre hombre = Hombre();
    hombre.nombre = "andres";
     hombre.apellido = "atencio";
      hombre.edad = 18;
   print("""
   El nombre es: ${hombre.nombre}
   El apellido es: ${hombre.apellido}
   La edad es: ${hombre.edad}
  """);
  
}
class Animal{
  String? nombre; 
}
class Herviboro extends Animal{
  int? edad;
}
class Conejo extends Herviboro{
  String? comida;
}
class Carnivoro extends Animal{
  int? edad;
}
class Leon extends Carnivoro{
  String? peso;
}
class Hiena extends Carnivoro{
  String? peso;
}
class Omnivoro extends Animal{
  int? edad;
}
class Hombre extends Omnivoro{
  String? apellido;
}
```