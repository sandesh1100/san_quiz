import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:san_quiz/question.dart';

class QuizBrain {
  int i = 0;
  List<Icon> scoreKeeper = [];

  List<Question> _qA = [
    Question('1. Human blood is red.', true),
    Question('2. Color of the leaf is green.', true),
    Question('3. Glasses don\'t help for a person\'s vision.', false)
  ];

  String getQueText() {
    return _qA[i].queText;
  }

  bool getQueAns() {
    return _qA[i].queAns;
  }

  int iCheck() {
    print("i before = $i");
    if (i >= _qA.length - 1) {
      i = 0;
      scoreKeeper.add(Icon(
        Icons.circle,
        color: Colors.blue.shade300,
      ));
      return i;
    } else {
      print("i = $i");
      return i++;
    }
  }

  void checkAns(bool userAns) {
    bool ans = getQueAns();
    if (ans == userAns) {
      scoreKeeper.add(Icon(
        Icons.thumb_up_alt_rounded,
        color: Colors.green,
      ));
    } else {
      scoreKeeper.add(Icon(
        Icons.close,
        color: Colors.red,
      ));
    }
    iCheck();
  }
}
