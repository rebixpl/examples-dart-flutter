import 'package:flutter/material.dart';
import 'package:sunmaster/components/app_bar.dart';
import 'package:sunmaster/components/planet_page_structure.dart';

class SunMainScreen extends StatefulWidget {
  @override
  _SunMainScreenState createState() => _SunMainScreenState();
}

class _SunMainScreenState extends State<SunMainScreen> {
  @override
  Widget build(BuildContext context) {
    return PlanetPageStructureGenerator(
      planetName: "Sun",
    );
  }
}
