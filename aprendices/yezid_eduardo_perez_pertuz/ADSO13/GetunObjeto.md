## Desarrollo con peticion GET a Backend un Objeto (FLUTTER)
  <a href="https://imgbb.com/"><img src="https://i.ibb.co/WkHFCph/flutterimagen.jpg" alt="flutterimagen" border="0"></a>

## MAIN
```
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sena_example/models/user.dart';
import 'widget/template.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my app',
      home: Scaffold(
          appBar: AppBar(title: Text('my app')),
          body: FutureBuilder(
            future: getUser(),
            builder: (context, snapsdata) {
              //var snapshot;
              if (snapsdata.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              }

              if (snapsdata.hasError || snapsdata.data == null) {
                print("Retornar pantalla de error");

                user defaultUser = user.customizedUser(
                    "defaultEmail@gmail.com",
                    "nombre default",
                    'https://avatars.githubusercontent.com/u/109951?s=400&v=');

                return Template(userA: defaultUser);
              } else {
                print((snapsdata.data as user).nombre);
                print("sanpshot");
                return Template(userA: snapsdata.data as user);
              }
            },
          )),
    );
  }

  Future<user?> getUser() async {
    Uri url = Uri.https('reqres.in', 'api/users/10');
    final http.Response response = await http.get(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        });
    if (response.statusCode == 200) {
      return user(response.body);
    }
    return null;
  }
}
```
## MODELS
```
import 'dart:convert' as convert;

class user {
  String nombre = "", avatar = "", email = "";

  user(String json) {
    final jsonResponse = convert.jsonDecode(json);
    nombre = jsonResponse["data"]["first_name"];
    avatar = jsonResponse["data"]["avatar"];
    email = jsonResponse["data"]["email"];
  }

  user.customizedUser(this.email, this.nombre, this.avatar);
}
```
## WIDGET
```
import 'package:sena_example/main.dart';
import 'package:sena_example/models/user.dart';
import 'package:flutter/material.dart';

class Template extends StatefulWidget {
  final user userA;

  Template({Key? key, required this.userA}) : super(key: key);

  @override
  State<Template> createState() => _TemplateState(userA);
}

class _TemplateState extends State<Template> {
  user userA;

  _TemplateState(this.userA);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.0),
        Text(
          userA.nombre,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 15.0),
        Image(image: NetworkImage(userA.avatar), height: 140),
        SizedBox(height: 15.0),
        Text(
          userA.email,
          style: TextStyle(fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            Icon(
              Icons.library_add,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Icon(
              Icons.android,
              color: Colors.green,
              size: 28.0,
            )
          ],
        )
      ],
    );
  }
}
```