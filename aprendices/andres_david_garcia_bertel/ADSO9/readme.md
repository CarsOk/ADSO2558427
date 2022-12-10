# Tipos de parametros y constructores

~~~
void main() {
    Persona persona = new Persona("Andres",  "Masculino");
    persona.apellido = "Garcia";
    persona.edad = 18;
  
    print('El nombre es ${persona.nombre} y su sexo es ${persona.sexo}');
    print('el nombre completo es ${persona.nombreCompleto()}');
    print('Tiene ${persona.edad} años');
    persona.edadMas(persona.edad);
  }

  class Persona {
    String? nombre, sexo, apellido;
    int? edad;

    Persona(this.nombre, this.sexo);

    String nombreCompleto() => '$nombre $apellido';
  
    void edadMas(no) {
      int n = no + 3;
      print('Terminara su formación a los $n años');
    }
  }
~~~