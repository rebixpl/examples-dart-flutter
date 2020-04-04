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

    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.forward(); // starts the animation ??

    // Listens for the status of animation ( for example returns AnimationStatus.completed if the animation ended successfully )
    animation.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        controller.reverse(from: 1.0);  // we can also start animation from the end
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    controller.addListener(() {
      // We need to add setState to make this shit work
      setState(() {});
      print(animation.value); // instead of using controller value we're now going to use animation value, because animation is almost like a layer that is applied on top of the controller
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
                    height: animation.value * 100,
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
