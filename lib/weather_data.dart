// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:http/http.dart' as http;
// import 'package:windsky/details.dart';
//
// class WeatherData extends StatefulWidget {
//   String value;
//   WeatherData({Key key,this.value}) : super(key: key);
//
//   @override
//   _WeatherDataState createState() => _WeatherDataState();
// }
//
// class _WeatherDataState extends State<WeatherData> {
//   double temparature = 0;
//   String name = 'City';
//   String country = 'Country';
//   String humidity = '0%';
//   String visibility = '0 KM';
//   String weather = 'Nice Weather';
//
//   String cityname ;
//
//   void getWeatherData() async {
//     var url = Uri.parse(
//         'https://api.openweathermap.org/data/2.5/weather?q=${cityname}&appid=e853cd137996e5a3c2a1cad355747abd');
//     var response = await http.post(url);
//     //print('Response status: ${response.statusCode}');
//
//     Map data = jsonDecode(response.body);
//     //print('Response body: ${response.body}');
//
//     setState(() {
//       temparature = (data['main']['temp'] - 273.15);
//       name = (data['name']);
//       country = data['sys']['country'];
//       humidity = data['main']['humidity'].toString();
//       visibility = (data['visibility'] / 1000).toString();
//       weather = data['weather'][0]['description'];
//       print(temparature);
//       Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//               builder: (context) => Details(
//                     temparature: temparature,
//                     name: name,
//                     country: country,
//                     humidity: humidity,
//                     visibility: visibility,
//                     weather: weather,
//                     cityname: cityname,
//                   )));
//     });
//     //
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     cityname = widget.value;
//     getWeatherData();
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SpinKitFadingCircle(
//           color: Colors.blue[300],
//           size: 50.0,
//         ),
//       ),
//     );
//   }
// }
