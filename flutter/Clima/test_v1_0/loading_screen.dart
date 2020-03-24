import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // it imports this packet as http
import 'dart:convert';

const String apiKey = 'abaa7568114f6cbed939a87a2d3fb859';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double longitude, latitude;

  //! This runs when our Stateful widget is craeted
  @override
  void initState() {
    super.initState();

    getLocation();
  }

  void getLocation() async {
    Location location = Location();

    //By using await we wait for getting location to complete, then we print it (if we dont wait the latitude and longitude would have null value assigned)
    await location.getCurrentLocation();

    latitude = location.latitude;
    longitude = location.longitude;

    getData();
  }

  //! This function gets data from OpenWeatherMap using http packet and saves it as future response 
  void getData() async {
    http.Response response = await http.get('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    
    // Checking if collecting data was successful
    if (response.statusCode == 200){
      String data = response.body;

      //* Decoding json data file which we got from the web
      var decodedData = jsonDecode(data);

      double temperature = decodedData['main']['temp'];
      int condition = decodedData['weather'][0]['id'];
      String cityName = decodedData['name'];

      print(temperature);
      print(condition);
      print(cityName);

    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}
