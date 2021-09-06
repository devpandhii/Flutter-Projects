import 'package:flutter/material.dart';
import 'package:quiz_application/main.dart';

class Score extends StatelessWidget {
  int right;
  int wrong;
  Score(this.right, this.wrong);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Center(child: Text('Score')),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          // Right Answer
          Center(
            child: Text(
              "$right",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          // Wrong Answer
          Center(
            child: Text(
              "$wrong",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return MyApp();
              }));
            },
            child: Center(child: Text('Reset')),
          ),
        ],
      ),
    );
  }
}
