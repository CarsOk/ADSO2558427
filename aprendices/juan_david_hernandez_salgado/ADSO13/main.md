~~~
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'user.dart';
import 'template.dart';

void main(){
  runApp(Profile());
}
class Profile extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Perfil',
      home: Scaffold(
        appBar: AppBar(title: Text('Perfil'), backgroundColor: Colors.black,),
        body: FutureBuilder<User>(
          future: getUser(),
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.done){
              User user = snapshot.data as User;
              return Template(user:user);
            }
            return Center(child: CircularProgressIndicator());
          },
        )
      ),
    );
  }

  Future<User> getUser() async {
    final url = Uri.https('reqres.in','/api/users/5');
    final response = await http.get(url);
      return User(response.body);
  }
}
~~~
