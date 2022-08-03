import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:windsky/details.dart';
import 'package:windsky/Version%202/detailsv2.dart';
import 'package:windsky/weather_data.dart';
import 'package:windsky/Version%202/weather_datav2.dart';
import 'package:windsky/weather_search.dart';
import 'package:windsky/Version%202/weather_searchv2.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.cyan
//
//       ),
//       home: WeatherSearch(),
//     );
//   }
// }



void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => WeatherDataV2()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.cyan,

        //useMaterial3: true,

      ),
      home: WeatherSearchV2(),
    );
  }
}
