# manejo de cadenas en Dart

~~~
void main() {
    Empresa empresa =  Empresa ('colombia',23523,'centro');
    print (empresa.gcodigo());
  }
  class Empresa{
    String? pais,oficina;
    int? numero; 
  
    Empresa(this.pais, this.numero, this.oficina);
    String gcodigo () => pais!.substring(0,3) + numero!.toString().substring(0,3)+  oficina!.substring(oficina!.length - 3, oficina!.length);  
}
~~~