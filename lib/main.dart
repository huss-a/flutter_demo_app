import "package:flutter/material.dart";
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;
  var _totalscore = 0;
  var _hasFin = false;

  @override
  Widget build(BuildContext context) {
    const List<Map<String, Object>> _questions = const [
      {
        'question': 'What\'s your favourite animal?',
        'answers': [
          {'text': 'Dog', 'score': 3},
          {'text': 'Cat', 'score': 4},
          {'text': 'Pigeon', 'score': 4}
        ]
      },
      {
        'question': 'favourite meal',
        'answers': [
          {'text': 'Burger', 'score': 2},
          {'text': 'Pizza', 'score': 5},
          {'text': 'Ramen', 'score': 4}
        ]
      },
      {
        'question': 'favourite Popstar?',
        'answers': [
          {'text': 'Ariana Grande', 'score': 5},
          {'text': 'Taylor Swift', 'score': 5},
          {'text': 'Billie Eilish', 'score': 2}
        ]
      },
    ];

    void increment(int score, bool isEnd) {
      _totalscore += score;
      if (isEnd)
        _hasFin = true;
      else
        _questionIdx++;
    }

    void _answerQ(score) {
      setState(() {
        _questionIdx == _questions.length - 1
            ? increment(score, true)
            : increment(score, false);
      });
    }

    void restart() => setState(() {
          _hasFin = false;
          _questionIdx = 0;
          _totalscore = 0;
        });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
              child: Text(
            "Flutter App",
            style: TextStyle(fontSize: 25),
          )),
        ),
        body: !_hasFin
            ? Quiz(
                questions: _questions,
                answerQ: _answerQ,
                questionIdx: _questionIdx,
                score: _totalscore,
              )
            : Result(restart, _totalscore),
      ),
    );
  }
}
