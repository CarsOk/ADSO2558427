# Clase abstracta y metodo estatico

~~~
void main(){
    Perro animalp = Perro();
    Gato animalg = Gato();
    Vaca animalv = Vaca();
  
    animalp.nombre = 'luna';

    print("sonido de los animales");
    animalv.emitirSonido();
    animalg.emitirSonido();
    animalp.emitirSonido();
    print("""
    El imc del perro ${animalp.nombre} es:
    """);
    Carnivoro.imc(30,16);
  }

  abstract class Animal{
    void emitirSonido();
  }

  class Carnivoro{
    String? nombre;
 
  static void imc(a, b) => print(a * b);
  } 
  class Perro extends Carnivoro implements Animal{
    void emitirSonido() => print('wau wau');
  }
  class Gato implements Animal{
    void emitirSonido() => print('miauuu miauu');
  }

  class Vaca implements Animal{
    void emitirSonido() => print('muuuuuu');
  }
~~~