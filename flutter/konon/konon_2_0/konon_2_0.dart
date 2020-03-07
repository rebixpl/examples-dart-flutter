import 'dart:io';
import 'dart:async';

import 'package:path_provider/path_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(
    new MyApp(),
  );
}

double custFontSize = 1.0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Reading and Writing to Storage",
      theme: ThemeData(fontFamily: 'Amatic'),
      home: Home(
        storage: Storage(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  final Storage storage;

  Home({Key key, @required this.storage}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();
  String state;
  Future<Directory> _appDocDir;

  @override
  void initState() {
    super.initState();
    widget.storage.readData().then((String value) {
      setState(() {
        state = '${value}';
      });
    });
  }

  void ChangeFontSize(var chg) async {
    setState(() {
      custFontSize += chg;
    });
  }

  Future<File> writeData() async {
    setState(() {
      state = controller.text;
      controller.text = '';
    });

    return widget.storage.writeData(state);
  }

  void getAppDirectory() {
    setState(() {
      _appDocDir = getExternalStorageDirectory();
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
            ));
          }),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  '${state ?? "File is Empty"}', // Text shows in application
                  textAlign: TextAlign.center,
                  //overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: custFontSize,
                ),
                TextField(
                  controller: controller,
                ),
                RaisedButton(
                  onPressed: writeData,
                  child: Text('Write to File'),
                ),
                RaisedButton(
                  child: Text("Get DIR path"),
                  onPressed: getAppDirectory,
                ),
                FutureBuilder<Directory>(
                  future: _appDocDir,
                  builder: (BuildContext context,
                      AsyncSnapshot<Directory> snapshot) {
                    Text text = Text('');
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasError) {
                        text = Text('Error: ${snapshot.error}');
                      } else if (snapshot.hasData) {
                        text = Text('Path: ${snapshot.data.path}');
                      } else {
                        text = Text('Unavailable');
                      }
                    }
                    return new Container(
                      child: text,
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}

class Storage {
  Future<String> get localPath async {
    final dir = await getExternalStorageDirectory();
    return dir.path;
  }

  Future<File> get localFile async {
    final path = await localPath;
    return File('$path/quotes.txt');
  }

  Future<String> readData() async {
    try {
      final file = await localFile;
      String body = await file.readAsString();

      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<File> writeData(String data) async {
    final file = await localFile;
    return file.writeAsString("$data\n\n", mode: FileMode.append);
  }
}
