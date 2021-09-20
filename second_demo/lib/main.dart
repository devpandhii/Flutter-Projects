// Import statement
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// Main Function
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  void playSound(int sound) {
    // Audio player object
    // Alt + Enter
    // Ctrl + .
    final player = AudioPlayer();
    // Play sound
    player.play("images/note$sound.wav");
    // sound 1 = note1.wav
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Demo"),
      ),
      // Expanded: Divide screen in equal parts
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: TextButton(
                child: Text("Red"),
                onPressed: () {
                  playSound(1);
                  print("red");
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: TextButton(
                child: Text("Yellow"),
                onPressed: () {
                  playSound(2);
                  print("yellow");
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: TextButton(
                child: Text("Green"),
                onPressed: () {
                  playSound(3);
                  print("green");
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple,
              child: TextButton(
                child: Text("Purple"),
                onPressed: () {
                  playSound(4);
                  print("purple");
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
              child: TextButton(
                child: Text("Orange"),
                onPressed: () {
                  playSound(5);
                  print("orange");
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.redAccent,
              child: TextButton(
                child: Text("Red Accent"),
                onPressed: () {
                  playSound(6);
                  print("redAccent");
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.pink,
              child: TextButton(
                child: Text("Pink"),
                onPressed: () {
                  playSound(7);
                  print("pink");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
