import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Quizzies",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade300,
      ),
      body: QuizApp(),
    ),
  ));
}

class QuizApp extends StatefulWidget {
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  //List<Icon> scoreKeeper = [];

  /*List<String> questions = [
    'Human blood is red.',
    'Color of the leaf is green.',
    'Glasses don\'t help for a person\'s vision.'
  ];

  List<bool> answers = [true, true, false];*/

  //int i = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 5,
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                quizBrain.getQueText(),
                style: TextStyle(fontSize: 25.0),
              ),
            ))),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: Text(
              "True",
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            onPressed: () {
              setState(() {
                quizBrain.checkAns(true);
              });
            },
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text(
              "False",
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            onPressed: () {
              setState(() {
                quizBrain.checkAns(false);
              });
            },
          ),
        )),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: quizBrain.scoreKeeper,
            ),
          ),
        )
      ],
    );
  }
}
