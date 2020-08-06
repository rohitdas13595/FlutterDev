import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Function resetDone;

  Result(this.resultScore, this.resetDone);

  String get resultPhrase {
    String resultText = 'You Did It!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and Innocent!';
    } else if (resultScore <= 12) {
      resultText = 'you are Pretty likable!';
    } else if (resultScore <= 16) {
      resultText = 'You are Strange??!';
    } else {
      resultText = 'Eww !You are so Bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(
          fontFamily: 'DancingScript',
          color: Colors.red,
          fontSize: 36,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
      ),
      RaisedButton(
        color: Colors.orange,
        textColor: Colors.indigo,
        child: Text(
          "Restart App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: resetDone,
      ),
    ]));
  }
}
