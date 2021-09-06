import 'package:flutter/material.dart';
import 'package:quiz_application/second.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // questionBank = [[], [], [], []];
  List questionBank = [
    ['Some cats are actually allergic to humans', true],
    ['You can lead a cow down stairs but not up stairs.', false],
    ['Approximately one quarter of human bones are in the feet.', true],
    ['A slug\'s blood is green.', true],
    ['Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true],
    ['It is illegal to pee in the Ocean in Portugal.', true],
    [
      'No piece of square dry paper can be folded in half more than 7 times.',
      false
    ],
    [
      'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
      true
    ],
    [
      'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
      false
    ],
    [
      'The total surface area of two human lungs is approximately 70 square metres.',
      true
    ],
    ['Google was originally called \"Backrub\".', true],
    [
      'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
      true
    ],
    [
      'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
      true
    ],
  ];

  List<Icon> scoreKeeper = [];

  int questionNo = 0, right = 0, wrong = 0;

  // Question Counter
  void nextQuestion() {
    if (questionNo < questionBank.length) {
      questionNo++;
    }
  }

  // Questions
  String getQuestionText() {
    return questionBank[questionNo][0];
  }

  // Answers
  bool getCorrectAnswers() {
    return questionBank[questionNo][1];
  }

  // If quiz is finished or not
  bool isFinished() {
    if (questionNo >= questionBank.length - 1) {
      // Yes the quiz is finished
      return true;
    } else {
      // No the quiz is pending
      return false;
    }
  }

  // Check Answers
  void checkAns(bool userPicked) {
    setState(() {
      if (isFinished() == true) {
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
          // Question Text
          Expanded(
            flex: 6,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  getQuestionText(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          // True Button
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
              child: TextButton(
                child: Text(
                  'True',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  checkAns(true);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
            ),
          ),
          // False Button
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
              child: TextButton(
                child: Text(
                  'False',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  checkAns(false);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
            ),
          ),
          // Icons
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
