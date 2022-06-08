import 'package:flutter/material.dart';
import './Quiz.dart';

class Questions extends StatelessWidget {
  final String quesText;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Questions(@required this.quesText, @required this.questionIndex,
      @required this.questions);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text((questions[questionIndex]['questionText'] as String),style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30),textAlign: TextAlign.center,),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
          color: Colors.purple),
    );
  }
}
