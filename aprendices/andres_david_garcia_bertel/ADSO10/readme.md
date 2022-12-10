# Herencia 

~~~
void manin(){
  Conejo conejo = new Conejo();
  conejo.edad = 18;
  print();
}

class Animal {
  String? peso;
  int? edad;
}
class Herbivoro extends Animal {
  String? plantas;
}

class Carnivoro extends Animal{
  String? carne;
}

class Omnivoro extends Animal {
  String? especie;
} 

class Conejo extends Herbivoro{
  String? saltar;
}

class Leon extends Carnivoro{
  String? cazar;
}

class Hiena extends Carnivoro{
  String? robar;
}

class Hombre extends Omnivoro{
  String? pensar;
}
~~~