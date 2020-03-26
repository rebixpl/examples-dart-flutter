import 'package:geolocator/geolocator.dart';

class Location {
  double latitude, longitude;

  Future<void> getCurrentLocation() async {
    // async and await makes doing hard tasks at the background
    try {
      // try catch - catches errors
      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy
              .low); //* this gets the position of device (low accuracy)

      //* Getting longitude and Latitude
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      // e is short for exception
      print(e);
    }
  }
}
