import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text(
            'DICE',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.blueGrey,

        ),
        body: DicePage(),
      ),
    )
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 3;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child:  FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNo = Random().nextInt(6) +1;
                });
              },
              child: Image.asset('images/$leftDiceNo.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){

              },
              child:  Image.asset('images/6.png'),

            ),)
        ],

      ),);
  }
  }

