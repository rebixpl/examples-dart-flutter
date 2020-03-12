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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              // Expanded is a widget that expands a child of a Row, Column, or Flex so that the child fills the available space.
              // flex: 2, // If null or zero, the child is inflexible and determines its own size. If non-zero, the amount of space the child's can occupy in the main axis is determined by dividing the free space (after placing the inflexible children) according to the flex factors of the flexible children.
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset("images/dice1.png"),
              ), // Using Image.asset(path) instead of AssetImage(path) is a better way to include asset images
            ),
            Expanded(
              // flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton( // A flat button is a text label displayed on a (zero elevation) Material widget that reacts to touches by filling with color.
                  child: Image.asset("images/dice1.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
