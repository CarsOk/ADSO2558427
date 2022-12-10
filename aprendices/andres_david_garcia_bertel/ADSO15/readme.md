# CustomPaint, Stack y positioned

<a href="https://ibb.co/yNXTL66"><img src="https://i.ibb.co/L08w4xx/image.png" alt="image" border="0"></a>

### Main 
~~~
import 'package:flutter/material.dart';
import 'package:ejercicio_1/template.dart';
import 'package:http/http.dart' as http;
import 'package:ejercicio_1/user.dart';
void main(){
  runApp(Andres());
}

class Andres extends StatelessWidget{
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
   Future<User> getUser() async {
    final url = Uri.https('reqres.in', '/api/users/5');
    final response = await http.get(url);
    return User(response.body);
  }
}
~~~ 
### Template 
~~~
import 'package:flutter/material.dart';
import 'package:ejercicio_1/user.dart';
import 'package:ejercicio_1/background.dart';

class Template extends StatelessWidget {
  const Template({ Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Background1(),
          Positioned(
            top: 70.0,
            left: 180.0,
            height: 180.0,
            child: Container(
              width: 130.0,
              height: 100.0,
              child: Image(
                        image: NetworkImage(user.avatar!))
            ),
          ),
          Positioned(
                    top: 500-0,
                    left: 60.0,
                    right: 60.0,
                    child: Container(
                      width: 190.0,
                      height: 150.0,
                      child: Column(
                        children: [
                          SizedBox(height: 5.0),
                          Text(user.nombre!,style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold), ),
                          SizedBox(height: 5.0),
                          Text(user.email!),
                          SizedBox(height: 5.0),
                          Row( 
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.mail,
                                  color: Colors.black,
                                  size: 24.0,
                                  semanticLabel: 'Text to announce in accessibility modes',
                                ),
                                Icon(
                                  Icons.add_ic_call_rounded,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                                Icon(
                                  Icons.facebook,
                                  color: Colors.black,
                                  size: 36.0,
                                ),
                               ]
                             )  
                          ],
                         )
                     ),
                  ), 
               ],
            )
         )
      ); 
   }   
}
~~~

### Background
~~~
import 'package:flutter/material.dart';

class Background1 extends StatelessWidget {
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
    final lapiz = new Paint();
    // Propiedades
    lapiz.color = Colors.black;
    lapiz.style = PaintingStyle.fill;
    // lapiz.style = PaintingStyle.stroke;
    lapiz.strokeWidth = 10.0;

    final path = new Path();
    // dibujar con el path y lapiz

     //path.moveTo(0, size.height * 0.9);
    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.10, size.height * 0.10, size.width, size.height * 0.6);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
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