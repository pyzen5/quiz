import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it!!';
    switch (resultScore) {
      case 4: resultText = 'You are Unique!!'; break;
      case 5: resultText = 'You are Awesome!!'; break;
      case 6: resultText = 'You are Fantastic!!'; break;
      case 7: resultText = 'You are Cool!!'; break;
      case 8: resultText = 'You are Wonderful!!'; break;
      case 9: resultText = 'You are Something!!'; break;
      case 10: resultText = 'You are Nothing!!'; break;
      case 11: resultText = 'You are God!!'; break;
      case 12: resultText = 'You are Bad!!'; break;
      case 3: resultText = 'You are Evil!!'; break;      
      default: resultText = 'You are What you are!!';
    }
    // if (resultScore <= 50) {
    //   resultText = 'You are awesome';
    // } else if (resultScore <= 70) {
    //   resultText = 'You are Likeable';
    // } else if (resultScore <= 100) {
    //   resultText = 'You are Bad';
    // } else {
    //   resultText = 'You are What you are!!';
    // }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            color: Colors.blue,
            child: Text('Restart Quiz!!'),
          ),
        ],
      ),
    );
  }
}
