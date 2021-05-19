import "package:flutter/material.dart";

class Question extends StatelessWidget {
  final String questionTxt;

  Question(this.questionTxt);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(15),
        child: Text(
          questionTxt,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
