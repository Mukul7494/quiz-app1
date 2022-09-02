import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Color answerColor;
  final VoidCallback answerTaped;
  Answer(
      {required this.answerText,
      required this.answerColor,
      required this.answerTaped});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: answerTaped,
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        width: double.infinity,
        decoration: BoxDecoration(
            color: answerColor,
            borderRadius: BorderRadius.circular(20),
            border:
                Border.all(color: Color.fromARGB(255, 245, 117, 6), width: 3)),
        child: Center(
          child: Text(
            answerText,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
