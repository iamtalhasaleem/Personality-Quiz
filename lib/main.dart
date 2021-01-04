import 'package:flutter/material.dart';
import 'package:quiz/result.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyQuiz());
}

class MyQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyQuizState();
  }
}

class _MyQuizState extends State<MyQuiz> {
  final _questions = const [
    {
      'questionText': 'what is your favourit animal',
      'answers': [
        {'text': 'Cat', 'score': 7},
        {'text': 'Horse', 'score': 5},
        {'text': 'Dog', 'score': 6},
        {'text': 'Fish', 'score': 3},
      ]
    },
    {
      'questionText': 'What is your Favourite Color',
      'answers': [
        {'text': 'Green', 'score': 7},
        {'text': 'Blue', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Black', 'score': 1},
      ]
    },
    {
      'questionText': 'What is your Hobby',
      'answers': [
        {'text': 'Singing', 'score': 1},
        {'text': 'Swiming', 'score': 4},
        {'text': 'Reading', 'score': 7},
        {'text': 'Chess', 'score': 10},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("Heloo");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Personality Checker App",
            textAlign: TextAlign.center,
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
