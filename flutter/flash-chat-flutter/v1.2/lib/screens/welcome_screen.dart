import 'package:flutter/material.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration:
          Duration(seconds: 1), // How long do yo want the animation to go for
      vsync:
          this, // If we have TickerProvideStateMixin declaration in state we can pass whole state using 'this' to act as a ticker
      upperBound: 1.0,
    );

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white).animate(
        controller); // it makes animation transition between two colors

    controller.forward();

    controller.addListener(() {
      // We need to add setState to make this shit work
      setState(() {});
    });
  }

  @override
  // When you're using animation controller it's important to use dispose method to delete the controller
  // This way it is not staying in the memory and eating resources
  void dispose() {
    // dispose is called when our state is destroyed
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
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
                    height: 60,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  speed: Duration(milliseconds: 500),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              buttonTitle: "Log In",
              colour: Colors.lightBlue,
              onPressed: () => Navigator.pushNamed(context, LoginScreen.id),
            ),
            RoundedButton(
              buttonTitle: "Register",
              colour: Colors.blueAccent,
              onPressed: () => Navigator.pushNamed(context, RegistrationScreen.id),
            ),
          ],
        ),
      ),
    );
  }
}
