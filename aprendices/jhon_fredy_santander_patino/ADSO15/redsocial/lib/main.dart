import 'package:flutter/material.dart';
import 'widgets/template.dart';
import 'package:http/http.dart' as http;
import 'model/user.dart';
import 'widgets/background.dart';

void main() {
  runApp(MyApp());
  }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Contactos',
      home: Scaffold( 
        body: FutureBuilder<User>(
          future: getUser(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.done){
              User user = snapshot.data as User;
              return Stack(
                children: [
                  Background1(),
                  Positioned(
                    top: 70.0,
                    left: 60.0,
                    right: 60.0,
                    child: Container(
                      width: 130.0,
                      height: 100.0,
                      child: Image(
                        image: NetworkImage(user.avatar!),
                        height: 300.0,
                      ),
                    
                    ),
                    
                  ),
                  Positioned(
                    bottom: 50.0,
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
                                  color: Colors.red,
                                  size: 24.0,
                                  semanticLabel: 'Text to announce in accessibility modes',
                                ),
                                Icon(
                                  Icons.add_ic_call_rounded,
                                  color: Colors.red,
                                  size: 30.0,
                                ),
                                Icon(
                                  Icons.facebook,
                                  color: Colors.red,
                                  size: 36.0,
                                ),
                              ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ]
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        )
      ),
    );
  }

  Future<User> getUser() async {
    final url = Uri.https('reqres.in', '/api/users/4');
    final response = await http.get(url);
    return User(response.body);
  }
}