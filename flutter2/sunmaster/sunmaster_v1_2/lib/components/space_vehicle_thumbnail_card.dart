import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:sunmaster/constants.dart';

class SpaceVehicleThumbnailCard extends StatelessWidget {
  SpaceVehicleThumbnailCard({
    @required this.vehicleImagePath,
    @required this.vehicleName,
    this.vehicleDescription = "",
    this.onPress,
    this.vehicleShadowColor = Colors.white38,
    this.typeOfData = "vehicle",
    this.attributeAuthor = "",
  });

  final String vehicleDescription;
  final String vehicleImagePath;
  final String vehicleName;
  final Function onPress;
  final Color vehicleShadowColor;
  final String typeOfData;
  final String attributeAuthor;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kReusableCardColor,
      cardChild: Column(
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          GestureDetector(
            onTap: onPress,
            child: Container(
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage(vehicleImagePath),
                    height: 150.0,
                  ),
                  Text(
                    "$attributeAuthor",
                    textAlign: TextAlign.center,
                    style: kAppBarTextStyle.copyWith(
                      fontSize: 10.0,
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
          Text(
            vehicleName,
            style: kPlanetNameTextStyle,
          ),
          SizedBox(height: 15.0),
          Text(
            "Tap on the ${typeOfData} to learn more.",
            textAlign: TextAlign.center,
            style: kAppBarTextStyle.copyWith(
              fontSize: 15.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$vehicleDescription",
              softWrap: true,
              textAlign: TextAlign.center,
              style: kPlanetDescriptionTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
