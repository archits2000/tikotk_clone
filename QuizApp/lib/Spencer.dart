import 'package:flutter/material.dart';

class Spencers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(''), centerTitle: true),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 5)),
                child: Image(
                    image: AssetImage(
                        'assets/images/Spencer-D-Pretty-Little-Liars.webp'))),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border.all(color: Colors.black, width: 5)),
              child: Text(
                'Hi this is Aria',
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
            )
          ],
        ));
  }
}