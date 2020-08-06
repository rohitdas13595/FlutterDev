import 'package:flutter/material.dart';

//import './question.dart';
//import './answer.dart';
import './quiz.dart';
import './result.dart';

/*void main() {
  runApp(MyApp());
}
*/
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favourite colour?",
      "answers": [
        {"text": "Black", 'score': 10},
        {'text': "Red", 'score': 5},
        {'text': "Green", 'score': 3},
        {'text': "White", 'score': 1},
      ],
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {'text': "Dog", 'score': 1},
        {'text': "Cat", 'score': 5},
        {'text': "Panda", 'score': 3},
        {'text': "Otter", 'score': 4},
      ],
    },
    {
      "questionText": "Who is your favourite instructor?",
      "answers": [
        {'text': "Max", 'score': 1},
        {'text': "Bhushan", 'score': 2},
        {'text': "Garry", 'score': 3},
        {'text': "Chiller", 'score': 4},
      ],
    },
  ];
  int _questionIndex = 0;
  int _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('More Questions There');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUIZ APP'),
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
