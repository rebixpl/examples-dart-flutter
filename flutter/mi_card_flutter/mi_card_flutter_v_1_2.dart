import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
            // This stretches our children's across the whole screen
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Container(
                height: 100.0,
                color: Colors.white,
                child: Text("Container 1"),
              ),
              // `SizedBox` gives us a spacing between Containers
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                color: Colors.blue,
                child: Text("Container 2"),
              ),
              SizedBox(
                height: 60.0,
              ),
              Container(
                height: 100.0,
                color: Colors.red,
                child: Text("Container 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
