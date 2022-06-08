import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Questions.dart';
import './Answers.dart';
import './HomeScreen.dart';
import './result.dart';
class Quiz extends StatefulWidget {
  State<StatefulWidget> createState() {
    return QuizApp();
  }
}

class QuizApp extends State<Quiz> {


  var questionIndex = 0;
  int totalScore = 0;

  final questions = const [

    {
      'questionText': 'How are you around People?',
      'answerText': [
        {'ans': 'Shy', 'point': 4},
        {'ans': 'Outspoken', 'point': 2},
        {'ans': 'Weird', 'point': 3},
        {'ans': 'Confident', 'point': 1}
      ]
    },
    {
      'questionText': 'How do you feel about your Parents?',
      'answerText': [
        {'ans': 'we are really close', 'point': 2},
        {'ans': 'we have a lot of disagreements', 'point': 5},
        {'ans': 'Wish we could spend more time together', 'point': 3},
        {'ans': 'They make my blood boil', 'point': 1}
      ],
    },


  ];

  @override
  Widget build(BuildContext context) {

    void answerChosen(int score) {
      setState(() {
        questionIndex += 1;
        totalScore += score;

      });

    }


    return questionIndex < questions.length ? Scaffold(appBar: AppBar(title: Text('Questions'),backgroundColor: Colors.red,),body:Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ Questions((questions[questionIndex]['questionText'] as String),questionIndex,questions),
          ...(questions[questionIndex]['answerText'] as List<Map<String, Object>>).map((answer) {
            return Answers((answer['ans'] as String), () => answerChosen((answer['point'] as int)));
          }),
          SizedBox(height: 100 ),
          Container(child: ElevatedButton(child: Text('Back to home Screen'), onPressed: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => HomeScreen())),))


    ],
    ),backgroundColor: Colors.black,): Results(totalScore);
  }
}
