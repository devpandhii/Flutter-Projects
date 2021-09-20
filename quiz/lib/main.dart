import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiz/score.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List questions = [
    ['The five rings on the Olympic flag are interlocking', true],
    ['Mount Kilimanjaro is the highest mountain in the world', false],
    ['Strictly Come Dancing first aired in the UK in 2005', false],
    ['A group of swans is known as a bevy', true],
    ['Sydney is the capital of Australia', false],
    ['The Penny Black is an old-fashioned coin', false],
    [
      'Glastonbury had been due to celebrate its 50th anniversary in June before the festival was cancelled',
      true
    ],
    [
      'Will.i.am is the only mentor to have appeared on every single series of The Voice UK',
      true
    ],
    ['A heptagon has eight sides', false],
    ['The star sign Capricorn is represented by a goat', true],
    ['The Penny Black is the name of a valuable old coin', false],
    ['Fish cannot blink', true],
    ['Seahorses have no teeth or stomach', true],
    [
      'Nepal is the only country in the world which does not have a rectangular flag',
      true
    ],
    ['Ellie Goulding had the final number one single of the 2010s', true],
    [
      'Only one film has ever won all five of the main Oscars (film, director, actor, actress and screenplay)',
      false
    ],
    ['Switzerland shares land borders with four other countries', false],
    [
      'Last Christmas by Wham! reached number one during the 1984 festive season',
      false
    ],
    [
      'The knight is the only piece in chess which can only move diagonally',
      false
    ],
    ['Mount Kilimanjaro the world\'s tallest peak', false],
    ['Spaghetto is the singular form of the word spaghetti.', true],
    [
      'Pinocchio was Walt Disney\'s first animated feature film in full color.',
      false
    ],
    ['Venezuela is home to the world\'s highest waterfall.', true],
    ['Seahorses have stomachs, which aid in the digestion of food', false],
  ];

  List<Icon> scoreKeeper = [];

  int questionNo = 0;
  int right = 0;
  int wrong = 0;

  // Question Counter
  void nextQuestion() {
    if (questionNo < questions.length) {
      questionNo++;
    }
  }

  // Questions
  String printNextQuestion() {
    return questions[questionNo][0];
  }

  // Answers
  bool getCorrectAnswers() {
    return questions[questionNo][1];
  }

  // If quiz is finished or not
  bool gameOver() {
    if (questionNo >= questions.length - 1) {
      // Yes the quiz is finished
      return true;
    } else {
      // No the quiz is pending
      return false;
    }
  }

  // Check Answers
  void answer(bool userPicked) {
    setState(() {
      if (gameOver() == true) {
        questionNo = 0;
        scoreKeeper = [];

        ////////////////
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Score(right, wrong);
          }),
        );
        ////////////
      } else {
        if (userPicked == getCorrectAnswers()) {
          // Icon.check
          print("right");
          right++;
          // Add Icon
          scoreKeeper.add(
            Icon(Icons.check, color: Colors.green),
          );
        } else {
          // Icon.close
          print("wrong");
          wrong++;
          scoreKeeper.add(
            Icon(Icons.close, color: Colors.red),
          );
        }
        nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              //Question Text
              flex: 6,
              child: Center(
                child: Text(
                  printNextQuestion(),
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              )),
          Expanded(
            //True Button
            child: TextButton(
              onPressed: () {
                answer(true);
              },
              child: Text("True", style: TextStyle(fontSize: 22)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
            ),
          ),
          Expanded(
            //False Button
            child: TextButton(
              onPressed: () {
                answer(false);
              },
              child: Text(
                "False",
                style: TextStyle(fontSize: 22),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
            ),
          ),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
