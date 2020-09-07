import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  Random rndm = new Random();
  int leftDiceNumber = 5;
  int rightDiceNumber = 4;
  @override
  Widget build(BuildContext context) {
    //leftDiceNumber = 2;

    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 2,
            child: FlatButton(
              onPressed: (){                                                  //void callback
                setState(() {
                  leftDiceNumber = rndm.nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed: (){                                                  //void callback
                setState(() {
                  rightDiceNumber = rndm.nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}


