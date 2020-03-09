import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
          // Column instead of `child` have `children`, and it`s used to contain many of children's which `Container()` can`t do
          // Column takes up vertical space, so if you want to take up a horizontal space use `Row()` instead
          child: Column(
            // The containers go from up to down (it`s default)
            //verticalDirection: VerticalDirection.down,

            // The containers go from down to up
            //verticalDirection: VerticalDirection.up,

            // Aligns the Containers at the center of Column
            //mainAxisAlignment: MainAxisAlignment.center,

            // Aligns the Containers at the end of Column
            //mainAxisAlignment: MainAxisAlignment.end,

            // Aligns the Containers at the beginning of Column (it`s default)
            //mainAxisAlignment: MainAxisAlignment.start,

            // This is the same as mainAxisAlignment but horizontally
            crossAxisAlignment: CrossAxisAlignment.end, // you can choose many CrossAxisAlignment types

            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: Text("Container 1"),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
                child: Text("Container 2"),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
                child: Text("Container 3"),
              ),
              // This is invisible Container with the width as long as the screen, this container is used to positioning GUI elements
              Container(
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
