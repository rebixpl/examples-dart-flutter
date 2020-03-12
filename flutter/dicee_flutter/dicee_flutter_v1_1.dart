import 'dart:math';
import 'package:flutter/material.dart';

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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              // Expanded is a widget that expands a child of a Row, Column, or Flex so that the child fills the available space.
              // flex: 2, // If null or zero, the child is inflexible and determines its own size. If non-zero, the amount of space the child's can occupy in the main axis is determined by dividing the free space (after placing the inflexible children) according to the flex factors of the flexible children.
              child: FlatButton( // A flat button is a text label displayed on a (zero elevation) Material widget that reacts to touches by filling with color. It has DEFAULT PADDING: left-16.0px, right-16.0px
                onPressed: (){
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;// Generating a random int between 1 and 6, using dart:math library
                  });
                },
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ), // Using Image.asset(path) instead of AssetImage(path) is a better way to include asset images
            ),
            Expanded(
              // flex: 1,
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    rightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
