import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _answerQ;
  final String _ansertTxt;
  int score;
  Answer(this._answerQ, this._ansertTxt, this.score);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(
          _ansertTxt,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: _answerQ,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.teal)),
      ),
      width: 350,
    );
  }
}
