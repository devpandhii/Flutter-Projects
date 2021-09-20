import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DemoTextField(),
  ));
}

class DemoTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Fields"),
      ),
      // Ctrl + .
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              // maxLength: 10,
              decoration: InputDecoration(
                hintText: 'Email Address',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              // maxLength: 10,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
