import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp theme property sets the whole app theme
      theme: ThemeData.dark().copyWith(
          // To use custom color we need to convert it to hex ( #090C22 -> 0xFF090C22) (# changes to 0xFF)
          primaryColor: Color(0xFF090C22),
          scaffoldBackgroundColor: Color(0xFF090C22), // that`s the body color
      ),
      home: InputPage(),
    );
  }
}