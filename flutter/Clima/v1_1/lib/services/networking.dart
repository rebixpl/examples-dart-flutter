import 'package:http/http.dart' as http; // it imports this packet as http
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  //! This function gets data from OpenWeatherMap using http packet and saves it as future response
  Future getData() async {
    http.Response response = await http.get(url);

    // Checking if collecting data was successful
    if (response.statusCode == 200) {
      String data = response.body;

      //* Decoding json data file which we got from the web
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
