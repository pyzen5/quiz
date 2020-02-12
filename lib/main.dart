import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'Whats your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 50},
        {'text': 'Blue', 'score': 60},
        {'text': 'Green', 'score': 80},
      ],
    },
    {
      'questionText': 'Whats your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 85},
        {'text': 'Snake', 'score': 50},
        {'text': 'Lion', 'score': 60},
        {'text': 'Elephant', 'score': 70},
      ],
    },
    {
      'questionText': 'Whos your favorite instructor?',
      'answers': [
        {'text': 'John', 'score': 60},
        {'text': 'Dew', 'score': 50},
        {'text': 'Doe', 'score': 20},
        {'text': 'Wick', 'score': 100},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}
