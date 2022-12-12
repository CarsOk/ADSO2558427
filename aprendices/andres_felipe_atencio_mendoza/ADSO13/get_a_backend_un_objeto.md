import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      title: 'Mi App Sena',
      home: Scaffold(
          appBar: AppBar(title: Text('Usuario')),
          body: Column(
            children: [
              SizedBox(height: 15.0),
              Text('Nombre', style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(height: 15.0),
              const Image(
                  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')
              ),
              SizedBox(height: 15.0),
              Text('Correo'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
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
                  ),
                ],
              )
            ],
          )),
    );
  }
}