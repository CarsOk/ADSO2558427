# Desarrollo Con Peticion GET a Backend Un Objeto

# Main
```
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/template.dart';
import 'package:http/http.dart' as http;
import 'models/user.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App Sena',
      home: Scaffold(
        appBar: AppBar(title: Text('Usuario')),
        body: FutureBuilder<User>(
          future: getUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done){
              User user = snapshot.data as User;
              return Template(user: user);
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Future<User> getUser() async {
    final url = Uri.https('reqres.in', '/api/users/4');
    final response = await http.get(url);
    return User(response.body);
  }
}
```


# Template
```
import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Template extends StatelessWidget {
  const Template({
    Key? key,
    required this.user,
  }) : super(key: key);

  final user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.0),
        Text(
          user.nombre!,
          style: TextStyle(fontSize: 25.0),
        ),
        SizedBox(height: 15.0),
        Image(
          image: NetworkImage(user.avatar!),
        ),
        SizedBox(height: 15.0),
        Text(user.email!),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 4, 100, 180),
              size: 24.0,
            ),
            Icon(
              Icons.audiotrack,
              color: Color.fromARGB(255, 29, 228, 36),
              size: 30.0,
            ),
            Icon(
              Icons.beach_access,
              color: Color.fromARGB(255, 208, 27, 14),
              size: 36.0,
            )
          ],
        )
      ],
    );
  }
}
```


# User
```
import 'dart:convert' as convert;

class User {
  String? nombre;
  String? avatar;
  String? email;

  User(String json) {
    final jsonResponse = convert.jsonDecode(json);
    nombre = jsonResponse["data"]["first_name"];
    avatar = jsonResponse["data"]["avatar"];
    email = jsonResponse["data"]["email"];
  }
}
``` 
