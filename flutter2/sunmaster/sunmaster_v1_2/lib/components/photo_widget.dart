import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:sunmaster/constants.dart';

class PhotoWidgetCard extends StatelessWidget {
  PhotoWidgetCard(
      {@required this.imagePath,
      @required this.imageName,
      this.vehicleShadowColor = Colors.white38,
      this.attributeAuthor = "",
      this.imageHeight = 300.0});

  final String imagePath;
  final String imageName;
  final Color vehicleShadowColor;
  final String attributeAuthor;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ReusableCard(
            colour: kReusableCardColor,
            cardChild: Column(
              children: <Widget>[
                SizedBox(
                  height: 25.0,
                ),
                GestureDetector(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          imageName,
                          style: kPlanetNameTextStyle,
                        ),
                        SizedBox(height: 15.0),
                        Image(
                          image: AssetImage(imagePath),
                          height: imageHeight,
                        ),
                        Text(
                          "$attributeAuthor",
                          textAlign: TextAlign.center,
                          style: kAppBarTextStyle.copyWith(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: vehicleShadowColor,
                          blurRadius: 152.0, // has the effect of softening the shadow
                          spreadRadius: 0.0, // has the effect of extending the shadow
                          offset: Offset(
                            5.0, // horizontal, move right 10
                            10.0, // vertical, move down 10
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
