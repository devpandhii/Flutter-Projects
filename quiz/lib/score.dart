import 'package:flutter/material.dart';
import 'package:quiz/main.dart';

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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$right",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          // Wrong Answer
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$wrong",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
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
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(350, 10, 3, 0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    '- Developed by Dev Pandhi',
                  )),
            ),
          )
        ],
      ),
    );
  }
}
