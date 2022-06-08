import 'package:flutter/material.dart';
import 'package:quizapp/Aria.dart';
import 'package:quizapp/Emily.dart';
import 'package:quizapp/Hanna.dart';
import 'package:quizapp/Quiz.dart';
import './Spencer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void handleClick( String value) {
      switch(value) {
        case 'Aria' :
          Navigator.push(context,MaterialPageRoute(builder: (context) => Arias()));
          break;
        case 'Spencer' :
          Navigator.push(context,MaterialPageRoute(builder: (context) => Spencers()));
          break;
        case 'Hanna' :
          Navigator.push(context,MaterialPageRoute(builder: (context) => Hannas()));
          break;
        case 'Emily' :
          Navigator.push(context,MaterialPageRoute(builder: (context) => Emilys()));
          break;
      }
    }

    return Scaffold(
      appBar: AppBar(
        actions: [PopupMenuButton<String>(onSelected: handleClick,itemBuilder: (BuildContext context) {
          return {'Aria', 'Spencer', 'Hanna', 'Emily'}.map((String choice) {
            return PopupMenuItem<String>(value: choice, child: Text(choice));
          }).toList();
        })
        ],
        backgroundColor: Colors.red,
        title: Text('Quiz App'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Image(
                  image: AssetImage(
                      'assets/images/pretty-little-liars-episode-app.webp'))),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.black),
                color: Colors.lightGreenAccent),
            child: Text(
              'Find out which "Pretty Little Liars" character you are , based on your personality!',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 50),
          Center(
              child: ElevatedButton(
                child: Text("Start the Quiz"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 30, color: Colors.black),
                    )),
                onPressed: () =>
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Quiz()),
                    ),
              )
          ),
        ],
      ),
      backgroundColor:
      Colors
          .
      limeAccent
      ,
    );
  }
}