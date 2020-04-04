import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id =
      "welcome_screen"; // static means this variable is associated with the class

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

// To make this welcomeScreenState to something that acts like a ticker we have to use the keyword 'with' and specify, that this class can act as a SingleTickerProvider
// If we have single animation we use -> 'SingleTickerProviderStateMixin'
// If we have multiple animation we use -> 'TickerProviderStateMixin'
class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  //Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration:
          Duration(seconds: 1), // How long do yo want the animation to go for
      vsync:
          this, // If we have TickerProvideStateMixin declaration in state we can pass whole state using 'this' to act as a ticker
      upperBound: 100.0,
    );

    //animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    controller.forward(); // starts the animation ??

    controller.addListener(() {
      // We need to add setState to make this shit work
      setState(() {});
      print(controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  // Hero is a widget to making animations
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: controller.value,
                  ),
                ),
                Text(
                  'Flash Chat',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
