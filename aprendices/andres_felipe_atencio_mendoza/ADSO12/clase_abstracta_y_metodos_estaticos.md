# Clase Abstracta y Metoo Estatico

```
public class MyClass { 
    
   public static void main(String[] args) {
  	 Person person = new Person("atencio");
  	   Person.nombre = "andres";
     System.out.println(person.nombre);
      System.out.println(person.getApellido());
    person.setGenero("Heterosexual");
       System.out.println(person.imc(72, 155));
    
  }
}
class Person {
	 public String nombre;
      private String apellido;
       private String genero;
    
    Person(String x){
    	this.apellido = x;
 }
        
    String getApellido(){
    	return this.apellido
}
            
    void setGenero(String z){
        this.genero = z;
            
}
        
    double imc(int peso, int altura){
    return peso * altura;
        }
}
```