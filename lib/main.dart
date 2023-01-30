import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
        appBar:AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DiceApp(),

    ),

  ));
}
class DiceApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _DicePageStat();


}
class _DicePageStat extends State<DiceApp>{
  var leftDiceCounter=1;
  var rightDiceCounter=1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: OutlinedButton(
              child: Image.asset('images/dice$leftDiceCounter.png'),
              onPressed: (){
                setState((){
                 setCounter();
                });
              },
            ),

          ),
          Expanded(
            child: OutlinedButton(child: Image.asset('images/dice$rightDiceCounter.png'),
              onPressed: (){
              setState((){
                  setCounter();
              });
              },
            ),

          )
        ],
      ),
    );

  }

  void setCounter(){
    rightDiceCounter=Random().nextInt(6)+1;
    leftDiceCounter=Random().nextInt(6)+1;

  }
}





