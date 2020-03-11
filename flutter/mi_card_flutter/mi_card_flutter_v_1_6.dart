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
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // CircleAvatar create a circle that represents a user ( you can set profile image, etc )
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/myFlyFace.png"),
                // backgroundColor: Colors.red, // You can set background color as well as image
              ),
              Text(
                "Katsuhira Agata",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontFamily: "Source Sans Pro",
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // PHONE CONTAINER
              Card( // A material design card. A card has slightly rounded corners and a shadow. A card is a sheet of Material used to represent some related information, for example an album, a geographical location, a meal, contact details, etc.
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "+43 696 696 420",
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: "Source Sans Pro",
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),

              // EMAIL CONTAINER
              Card(
                // padding: EdgeInsets.all(10.0), // PADDING in this form is not allowed to Card class, you must wrap for example this Row class below into Padding() class to use padding
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding( // You can use padding like this
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "rebixcraft@gmail.com",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Source Sans Pro",
                        color: Colors.teal.shade900,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
