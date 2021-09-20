import 'package:flutter/material.dart';
import 'package:login_page/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home Page")),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            AuthService().logout().then((value) {
              Navigator.pop(context);
            });
          },
          child: Text("Log out"),
        )));
  }
}
