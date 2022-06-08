import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './HomeScreen.dart';

class Results extends StatelessWidget {
  final int score;

  Results(this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/p8114307_b_v9_ba.jpg'),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.red, width: 5)),
            child: Text(
              "You Scored ${score} points , compare your score with your mates' and see what character they got!",
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.none),
              textAlign: TextAlign.center,
            ),
          ),

         Container(child: Image(image: AssetImage('assets/images/intro-1572020704.jpg'),),),
         Container(height: 200,decoration: BoxDecoration(color: Colors.black,border: Border.all(color: Colors.red,width:5)),child: Text('You are ...................................... , just like ',style:TextStyle(fontSize: 16,fontStyle: FontStyle.italic,decoration: TextDecoration.none)),),
         SizedBox(height:200),
         Align(alignment: Alignment.bottomCenter,child: Container( child: ElevatedButton(onPressed: () => Navigator.push(context,
         MaterialPageRoute(builder: (context) => HomeScreen())), child: Text('Go Back To The HomePage'),),),)
        ],
      ),
    );
  }
}
