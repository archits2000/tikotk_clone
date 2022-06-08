import 'package:flutter/material.dart';
import './Questions.dart';
class Answers extends StatelessWidget {
  final String ans;
  final Function selectHandler;




  Answers(@required this.ans,@required this.selectHandler);
  @override
  Widget build(BuildContext context){
    return Container(width: double.infinity,child: ElevatedButton(child: Text(ans),onPressed:() => selectHandler()));
  }
}