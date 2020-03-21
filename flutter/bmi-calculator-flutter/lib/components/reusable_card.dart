import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colour,
        this.cardChild, this.onPress}); // @required keyword makes property must to be passed into the constructor, otherwise the class won`t be created

  final Color colour; // final makes this property immutable, so the color can't actually change while the card is already created
  final Widget cardChild;
  final Function onPress; // Note thaT ReusableCard class takes Function and this is how to declare empty function like a variable!

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          // It create those circular edges of containers
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
