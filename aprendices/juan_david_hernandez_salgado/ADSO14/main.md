~~~
import 'package:flutter/material.dart';
import 'user.dart';
import 'package:http/http.dart' as http;
import 'template.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'first app',
      home: Scaffold(
        appBar: AppBar(title: Text('Perfil'), backgroundColor: Colors.blueGrey.shade700),
        backgroundColor: Colors.white60,
        body: FutureBuilder<List<User>>(
          future: getData(),
          builder:(context,snapshot){
            if (snapshot.connectionState == ConnectionState.done){
              List<User> users = snapshot.data!;
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (BuildContext context, index){
                  final user = users[index];
                  return ItemData(user : user);
                }
              );
            }
            return const Center(child:CircularProgressIndicator());
          }
        ),
      )
    );
  }
  Future<List<User>> getData() async{
    final url = Uri.https('reqres.in','/api/users');
    final response = await http.get(url);
    return userFromJson(response.body);
  }
}

~~~
