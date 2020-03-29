import 'package:flutter/material.dart';
import 'pages/main_page.dart';

void main() => runApp(Sunmaster());

class Sunmaster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 1.0,
        ),
      ),
      home: MainPage(),
    );
  }
}
