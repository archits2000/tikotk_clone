import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final Function answerChosen;
  final List<Map<String,Object>> questionList;
  final int questionIndex;
  Quiz({required this.answerChosen, required this.questionList, required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Question(
          (questionList[questionIndex]['questionText'] as String),
        ),
        ...(questionList[questionIndex]['answerText'] as List<Map<String,Object>>)
            .map((answer) {
          return Answer((answer['ans'] as String), () => answerChosen(answer['score']));
        }).toList()
      ],
    );
  }
}