##  CustomPaint, Stack y Positioned

## Main
```
import 'package:app/widget/template.dart';
import 'package:flutter/material.dart';
import 'package:app/models/user.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter demo',
      home: Scaffold(
        body: FutureBuilder<User>(
          future: getUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
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

## Template

```
import 'package:flutter/material.dart';
import 'package:app/models/user.dart';
import 'background.dart';

class Template extends StatelessWidget {
  const Template({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter demo',
      home: Scaffold(
        body: Stack(
          children: [
            Background(),
            Positioned(
              top: 160.0,
              left: 25,1
              child: Container(
                height: 325,
                width: 400,
                child: Column(children: [
                  Image(
                    image: NetworkImage(user.avatar!, scale: 0.9),
                    )
                ],),
              ),
            ),
    Positioned(
           bottom: 30.0
           
                  left: 25,
                child: Container(
                  height: 250,
                width: 350,
                  child: Column(children: [
                    SizedBox(height: 15.0),
                    Text(
                    user.nombre!,
                    style: TextStyle(fontSize: 25.0),
                   ),
                  SizedBox(height: 25.0),
                     Text(user.email!),
                     SizedBox(height: 25.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // ignore:   prefer_const_literals_to_create_immutables
                      children: [
                      const Icon(
                      Icons.facebook,
                      color: Colors.blue,
                        size: 30.0,
                       ),
                      const Icon(
                      Icons.add_call,
                        color: Colors.green,
                        size: 30.0,
                    ),
                        const Icon(
                      Icons.email,
                      color: Colors.grey,
                      size: 32.0,
                      )
                  ]
                  )
                   ],),
              ),
            )
           ],
        ),
      )
    );
  }
}
```


# Background
```

import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderLoginPainter(),
      ),
    );
  }
}

class _HeaderLoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = Colors.blue;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10.0;

    final path = Path();
    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.7, size.width , size.height * 0.5);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
```

## User
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
