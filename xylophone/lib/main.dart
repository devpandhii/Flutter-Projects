import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  void playAudio(int s) {
    final player = AudioPlayer();
    player.play("images/note$s.wav");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xylophone'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            //margin: const EdgeInsets.only(top: 10.0),
            child: Container(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Text(
                    'Red',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    playAudio(1);
                    print("Red");
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
              child: TextButton(
                child: Text(
                  'Orange',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  playAudio(2);
                  print("Orange");
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: TextButton(
                child: Text(
                  'Yellow',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  playAudio(3);
                  print("Yellow");
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green.shade200,
              child: TextButton(
                child: Text(
                  'Light Green',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  playAudio(4);
                  print("Light Green");
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green.shade400,
              child: TextButton(
                child: Text(
                  'Dark Green',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  playAudio(5);
                  print("Dark Green");
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.lightBlue.shade100,
              child: TextButton(
                child: Text(
                  'Light Blue',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  playAudio(6);
                  print("Light Blue");
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: TextButton(
                child: Text(
                  'Blue',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  playAudio(7);
                  print("Blue");
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple,
              child: TextButton(
                child: Text(
                  'Purple',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  playAudio(3);
                  print("Purple");
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(300, 10, 20, 8),
            child: Expanded(
                child: ElevatedButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  'Developed By Dev Pandhi',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
