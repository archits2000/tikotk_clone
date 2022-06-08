import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final String ansText;
  final Function quesIndex;
  Answer(this.ansText,this.quesIndex);
  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: ElevatedButton(child: Text(ansText),onPressed: ()=> quesIndex() ,)
    );
  }
}