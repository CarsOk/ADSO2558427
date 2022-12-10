# Desarrollo Con peticion GET a Backend un Objeto

<a href="https://imgbb.com/"><img src="https://i.ibb.co/qJF5LXX/image.png" alt="image" border="0"></a>

### Main
~~~
import 'package:flutter/material.dart';
import 'package:prueba_2_flutter/user.dart';
import 'package:http/http.dart' as http;
import 'package:prueba_2_flutter/template.dart';
void main(){
  runApp(Fabio());
}

class Fabio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      home: Scaffold(
    
        body: FutureBuilder<User>(
          future: getUser(),
          builder: (context, snaphot){
            if(snaphot.connectionState == ConnectionState.done){
              User user = snaphot.data as User;
              return Template(user : user);
            }
            return Center(child: CircularProgressIndicator());
          },
        )
      ),
    );
  }
  Future<User> getUser() async{
    final url = Uri.http('reqres.in','/api/users/11');
    final response = await http.get(url);
    return User(response.body);
  }
}
~~~

### User 
~~~
import 'dart:convert' as convert;

class User{
 String? nombre;
 String? avatar;
 String? email;
 User(String json){
   final jsonResponse = convert.jsonDecode(json);
   nombre = jsonResponse ["data"]["first_name"];
   avatar = jsonResponse ["data"]["avatar"];
   email = jsonResponse ["data"]["email"];
 }
}
~~~

### Template 
~~~
import 'package:flutter/material.dart';
import 'package:ejercicio_1/user.dart';

class Template extends StatelessWidget {
  const Template({ Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Text(user.nombre!, style: TextStyle(fontSize: 30.0),),
         Image(
          image: NetworkImage(user.avatar!),
        ),
        Text((user.email!),style: TextStyle(fontSize: 30.0),),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
      Icons.favorite,
      color: Color.fromARGB(255, 0, 0, 0),
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    Icon(
      Icons.audiotrack,
      color: Color.fromARGB(255, 9, 9, 9),
      size: 30.0,
    ),
    Icon(
      Icons.beach_access,
      color: Color.fromARGB(255, 6, 6, 6),
      size: 36.0,
    ),
        ],
       )

      ],
      
    );
  }
}
~~~