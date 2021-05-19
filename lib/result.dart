import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function _restart;
  int _score;

  Result(this._restart, this._score);
  // MAX POSSIBLE SCORE = 14
  // MIN POSSIBLE SCORE = 7
  String get resultTxt {
    String result;
    if (_score <= 7)
      result = "Loser 🤮";
    else if (_score <= 9)
      result = "Not bad 😗";
    else if (_score == 11)
      result = "Nice 😏";
    else if (_score <= 13)
      result = "WOOO 😁";
    else if (_score == 14) result = "Legendary 😍";

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultTxt,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(onPressed: _restart, child: Text("Play Again")),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    ));
  }
}
