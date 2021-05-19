import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQ;
  final int questionIdx;
  int score;
  Quiz(
      {@required this.questions,
      @required this.answerQ,
      @required this.questionIdx,
      @required this.score});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIdx]['question']),
        ...(questions[questionIdx]['answers'] as List<Map<String, Object>>)
            .map((a) {
          return Answer(() => answerQ(a['score']), a['text'], score);
        }).toList(),
      ],
    );
  }
}
