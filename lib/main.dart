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
      'answers': ['Black', 'Red', 'Blue', 'Green'],
    },
    {
      'questionText': 'Whats your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Lion', 'Elephant'],
    },
    {
      'questionText': 'Whos your favorite instructor?',
      'answers': ['John', 'Dew', 'Doe', 'Wick'],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
