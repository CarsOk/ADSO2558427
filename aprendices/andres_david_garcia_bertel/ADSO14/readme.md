# Desarrollo Con peticion GET a Backend Lista Objetos

<a href="https://imgbb.com/"><img src="https://i.ibb.co/XDsH0Yp/image.png" alt="image" border="0"></a>

### main 
 ~~~
import 'package:flutter/material.dart';
import 'package:ejercicio_1/intemdata.dart';
import 'package:http/http.dart' as http;
import 'package:ejercicio_1/users.dart';
void main(){
  runApp(Andres());
}

class Andres extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Hola',
      home: Scaffold(
        appBar: AppBar(title: const Text('Lista de usuario'),),
        body: FutureBuilder<List<User>>(
          future: getData(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.done){
              List<User> users = snapshot.data!;
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (BuildContext context, int idex){
                  final user = users[idex];
                return ItemData(user: user);
                }
              );
            }
             return Center(child: CircularProgressIndicator());
          },
        )
      ),
    );
  }
   Future <List<User>> getData() async {
    final url = Uri.https('reqres.in', '/api/users');
    final res = await http.get(url);
    print('Respuesta ${res.body}');
    return userFromJson(res.body);
  }
}
 ~~~

 ### users 
 ~~~
import 'dart:convert';
List<User> userFromJson(String str) => List<User>.from(json.decode(str)['data'].map((x) => User.fromJson(x)));

class User {
  User({
    this.correoElectrnico,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  String? correoElectrnico;
  String? firstName;
  String? lastName;
  String? avatar;

  factory User.fromJson(Map<String, dynamic> json) => User(
    correoElectrnico: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
  );
}
 ~~~

 ### ItemData
 ~~~
import 'package:flutter/material.dart';
import 'package:ejercicio_1/users.dart';
class ItemData extends StatelessWidget {
  final User user;
  const ItemData({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${user.firstName!} ${user.lastName!}'),
      leading: Image(image: NetworkImage(user.avatar!)),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
 ~~~