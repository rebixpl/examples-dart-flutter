import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}



class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  double custFontSize = 1.0;

  void ChangeFontSize(var chg) async {
    setState(() {
      custFontSize += chg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Essentials Storage"), // AppBar application name
            backgroundColor: Color.fromARGB(255, 0, 122, 255), // AppBar color
            leading: Builder(builder: (BuildContext context) {
              return Center(
                child: Container(
                  child: GestureDetector(
                     onDoubleTap: () {
                    ChangeFontSize(-0.1);
                    },
                    child: IconButton(
                      icon: const Icon(Icons.format_size),
                     onPressed: () {
                       ChangeFontSize(0.1);
                       },
                    ),
                   ),
                 )
               );
              }
            ),
          ),

          body: SingleChildScrollView(
            child: Center(
            child: Container(
                child: Text(
                  "Text shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in applicationText shows in application", // Text shows in application
                  textAlign: TextAlign.center,
                  //overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: custFontSize,
                ),
              )
            ),
          )
      );
  }
}
