# Dart, objetos, clases y metodos

~~~
void main() {
    Operacion operacion =  Operacion();
      operacion.num1 = 2.5;
      operacion.num2 = 5.5;
      print('la suma es de:');
      print (operacion.sumar());
      print('la resta es de:');
      print (operacion.restar());
      print('la multiplicacion es :');
      print (operacion.multiplicar());
  }

  class Operacion{
    double? num1;
    double? num2; 
    double sumar(){
    double s = num1!+ num2!;
    return s;
  }
  double restar(){
    double r = num1! - num2!;
    return r;
  }
  double multiplicar(){
    double m = num1! * num2!;
    return m;
  }
}
~~~