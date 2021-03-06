import 'package:adv_singleton/models/user_model.dart';
import 'package:adv_singleton/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: StreamBuilder(
          stream: userService.userStream,
          builder: (BuildContext context, AsyncSnapshot<UserModel> snapshot) {
            return snapshot.hasData
                ? UserInfo(user: userService.user)
                : Center(child: Text('No hay informacion del usuario'));
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'page2'),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  final UserModel user;

  const UserInfo({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Nombre: ${user.name}'),
          ),
          ListTile(
            title: Text('Edad: ${user.age}'),
          ),
          Text(
            'Profeciones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Profecion 1'),
          ),
          ListTile(
            title: Text('Profecion 2'),
          ),
          ListTile(
            title: Text('Profecion 3'),
          ),
        ],
      ),
    );
  }
}
