import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!!';
    if(resultScore <= 50) {
      resultText = 'You are awesome';
    } else if(resultScore <= 70) {
      resultText = 'You are Likeable';
    } else if(resultScore <= 100) {
      resultText = 'You are Bad';
    } else {
      resultText = 'You are What you are!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
