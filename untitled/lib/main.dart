import 'package:flutter/material.dart';
import './Quiz.dart';
import './results.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var answerScore = 0;
  var questionIndex = 0;
  final questionList = const [
    {
      'questionText': "when do you wake up?",
      'answerText': [{'ans':'7:00','score':3}, {'ans':'7:30','score':5}, {'ans':'8:00','score':7}, {'ans':'6:00','score':8},],
    },
    {
      'questionText': "what's your favourite country?",
      'answerText': [{'ans':'Norway','score':3}, {'ans':'Sweden','score':5}, {'ans':'Germany','score':7}, {'ans':'Finland','score':7}, {'ans':'Denmark','score':8},],
    },
    {
      'questionText': "which is your favourite football club?",
      'answerText': [
       {'ans':'Juventus', 'score':5},
       {'ans':'Chelsey', 'score' : 8},
       {'ans':'Man Utd', 'score' : 3},
       {'ans':'Man City', 'score' : 7},
       {'ans':'PSG', 'score' : 10},
       {'ans':'Inter Milan' , 'score' : 3},
      ],
    }
  ];
  @override
  Widget build(BuildContext context) {
    void resetQuiz() {
      setState(() {
        questionIndex = 0;
        answerScore = 0;
      });
    }
    void answerChosen(int score) {
      setState(() {
        questionIndex = questionIndex + 1;
        answerScore += score;
      });
      print(questionIndex);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Answer My Questions"),
        ),
        body: questionIndex < questionList.length ? Quiz(answerChosen: answerChosen,questionList: questionList,questionIndex: questionIndex): Results(answerScore,resetQuiz)
      ),
    );
  }
}
