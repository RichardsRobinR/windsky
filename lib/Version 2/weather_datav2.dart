import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

class WeatherDataV2 with ChangeNotifier {
  double temparature = 0;
  String name = 'City';
  String country = 'Country';
  String humidity = '0%';
  String visibility = '0 KM';
  String weather = 'Nice Weather';
  String icon = "0";
  String pressure = "0";

  String cityname = "Mysuru";

  int statuscode = 0;

  void getWeatherData() async {


    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=${cityname}&appid=e853cd137996e5a3c2a1cad355747abd');
    var response = await http.post(url);
    print('Response status: ${response.statusCode}');
    statuscode = response.statusCode;

    if (response.statusCode == 200) {

      Map data = jsonDecode(response.body);
      //print('Response body: ${response.body}');

      temparature = (data['main']['temp'] - 273.15);
      name = (data['name']);
      country = data['sys']['country'];
      humidity = data['main']['humidity'].toString();
      visibility = (data['visibility'] / 1000).toString();
      weather = data['weather'][0]['description'];
      icon = data['weather'][0]['icon'];
      pressure = data['main']['pressure'].toString();
      print(pressure);

    }


    notifyListeners();
  }


  void changeData() {
    temparature = 0;
    name = 'City';
    country = 'Country';
    humidity = '0%';
    visibility = '0 KM';
    weather = 'Nice Weather';
    cityname ;
  }

}