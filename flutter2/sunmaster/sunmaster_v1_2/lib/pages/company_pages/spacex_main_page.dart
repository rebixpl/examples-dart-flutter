import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/data/database.dart';
import 'package:sunmaster/components/bottom_navigation_bar.dart';
import 'package:sunmaster/components/space_vehicle_thumbnail_card.dart';
import 'package:sunmaster/pages/company_pages/spacex_falcon1_page.dart';
import 'package:sunmaster/pages/company_pages/spacex_falcon9_v1_0_page.dart';

class SpaceXMainPage extends StatefulWidget {
  @override
  _SpaceXMainPageState createState() => _SpaceXMainPageState();
}

class _SpaceXMainPageState extends State<SpaceXMainPage> {
  String companyName = "SpaceX";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: SafeArea(
          child: AppBar(
            automaticallyImplyLeading: false, // hides leading widget
            flexibleSpace: Column(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.yellow[500],
                    ),
                    Text(
                      " Sunmaster",
                      style: kAppBarTextStyle.copyWith(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.yellow[500],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "$companyName",
                      style: kAppBarTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: kAppBarTextStyle.color,
                ),
                tooltip: "GO BACK",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: SpaceVehicleThumbnailCard(
                            attributeAuthor: "By SpaceX - SpaceX, CC BY-SA 3.0",
                            vehicleImagePath: kSpaceXFalcon1Flight4ImagePath,
                            vehicleName: "Falcon 1",
                            vehicleShadowColor: Colors.white,
                            vehicleDescription: kSpaceXFalcon1ShortDescription,
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Falcon1Screen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: SpaceVehicleThumbnailCard(
                            attributeAuthor: "By SpaceX - SpaceX, CC BY-SA 3.0",
                            vehicleImagePath: kSpaceXFalcon9v1_0_LiftoffImagePath,
                            vehicleName: "Falcon 9 v1.0",
                            vehicleShadowColor: Colors.white,
                            vehicleDescription: kSpaceXFalcon9v1_0_ShortDescription,
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Falcon9v1_0_Screen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), // Each container contains 2x widgets of planet card
          ],
        ),
      ),
      bottomNavigationBar: MyOwnBottomNavigatorBar(),
    );
  }
}
