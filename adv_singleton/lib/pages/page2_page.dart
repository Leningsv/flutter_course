import 'package:adv_singleton/models/user_model.dart';
import 'package:adv_singleton/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<UserModel>(
            stream: userService.userStream,
            builder: (context, snapshot) {
              return snapshot.hasData ? Text('Nombre: ${snapshot.data.name}') : Text('Pagina 2');
            }),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              child: Text('Estableser usuario'),
              color: Colors.blue,
              onPressed: () {
                final user = new UserModel(name: 'Lenin', age: 32);
                userService.user = user;
              }),
          MaterialButton(
              child: Text('Cambiar Edad'),
              color: Colors.blue,
              onPressed: () {
                userService.updateUserAge(30);
              }),
          MaterialButton(child: Text('Anadir Profecion'), color: Colors.blue, onPressed: () {})
        ],
      )),
    );
  }
}
