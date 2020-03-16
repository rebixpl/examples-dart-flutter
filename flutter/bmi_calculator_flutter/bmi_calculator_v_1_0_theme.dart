import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp theme property sets the whole app theme
      // ThemeData.dark(), - A default dark theme with a teal accent color
      // ThemeData.light(), - light theme default
      // You can set custom ThemeDate too!
      theme: ThemeData(
        // To use custom color we need to convert it to hex ( #090C22 -> 0xFF090C22) (# changes to 0xFF)
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22), // that`s the body color
        accentColor: Colors.purple,
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//       ),
      // Setting special theme to this one floatingActionButton
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.purple),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
    );
  }
}
