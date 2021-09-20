// To import The material library from flutter

import 'package:flutter/material.dart';

// Main method

void main() {
  runApp(MaterialApp(home: MyApp()));
}

// How to create a stateless widget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text("Hello World")),
    );
  }
}
