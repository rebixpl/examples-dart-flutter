import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

// You need to create StatelessWidget to use Hot Reload function which gives you immediately appearing changes in app
// You can easily create StatelessWidget by typing stless and pressing Enter
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        // SafeArea makes its children's fit inside safe area of your phone screen, so it fits under notch for example
        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 100.0,
            // EXAMPLES OF MARGIN - margin is for the outside od the widget, it creates free spaces around object
            // margin: EdgeInsets.all(20.0),
            // margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            margin: EdgeInsets.only(left: 30.0),
            // PADDING EXAMPLES - padding makes speecified `box` inside Container, padding is for the inside of the widget
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Text("Hello"),
          ),
        ),
      ),
    );
  }
}
