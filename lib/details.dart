import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:windsky/weather_data.dart';
import 'package:http/http.dart' as http;

class Details extends StatefulWidget {
  // double temparature;
  //
  // String name;
  //
  // String country;
  //
  // String humidity;
  //
  // String visibility;
  //
  // String weather;
  //
  // String cityname;
  //
  // Details(
  //     {Key key,
  //     this.temparature,
  //     this.name,
  //     this.country,
  //     this.humidity,
  //     this.visibility,
  //     this.weather,
  //     this.cityname})
  //     : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // WeatherData weatherData = new WeatherData();
  //
  // void displayData() {
  //   print(widget.name);
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // displayData();
  }

  //print()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[200],
      body: SafeArea(
          child: Container(
            constraints: BoxConstraints.expand(),
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: Image.asset('images/Morning.png').image,
        //         fit: BoxFit.fitWidth)),

            decoration: new BoxDecoration(
                gradient: new RadialGradient(
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  focal: Alignment.centerRight,
                  center: Alignment.centerLeft,
                  colors: [
                    Color(0xFF71ffe7),
                    Color(0xFF1fb2ab)
                  ],
                 radius: 2.0,
                )),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 70, 16, 16),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Country',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '19',
                            style: TextStyle(

                                fontSize: 200,

                                color: Colors.white),
                          ),
                          Text(
                            '°',
                            style: TextStyle(

                                fontSize: 100,

                                color: Colors.white),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topRight,
                              //color: Colors.red,
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  'weather',
                                  style: TextStyle(

                                      fontSize: 25,

                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Container(
                          width: 350,
                          height: 350,
                          //color: Colors.amberAccent,
                          decoration: BoxDecoration(

                            image: DecorationImage(
                              image: Image.asset('images/02n.png').image,
                              fit: BoxFit.contain,

                            )
                          ),
                        ),
                      ),
                      SizedBox(height: 130),
                      Container(
                        height: 80,
                        //width: 400,
                        decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.white24),
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20)),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'humidity',
                                  style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Humidity',
                                  style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'visibility',
                                  style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Visibility',
                                  style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Image.network('https://openweathermap.org/img/wn/10d@2x.png',fit: BoxFit.contain,height: 100,width: 100,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
      )),
    );
  }
}
