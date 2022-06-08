import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int score;
  final Function resetHandler;
  Results(this.score,this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (score <= 15) {
      resultText = 'You are a bunghole';
    }
    else if (score <= 20) {
      resultText = 'You are the biggest to cunt to ever roam the streets of rome';
    }
    else if (score <= 25) {
      resultText = 'You know what , just fuck off you pigfaced tosser , stop polluting earth with your presence';
    }
    else {
      resultText = 'You are pretty likable';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [Center(child:Text(resultPhrase),),ElevatedButton(onPressed: () => resetHandler(), child: Text('RESTART QUIZ'))],);
  }
}