import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:windsky/Version%202/weather_datav2.dart';

class DetailsV2 extends StatefulWidget {

  @override
  _DetailsV2State createState() => _DetailsV2State();
}

class _DetailsV2State extends State<DetailsV2> {



  @override
  void initState() {
    // TODO: implement initState

    //getData();
    super.initState();

  }


  void getData() {
    context.read<WeatherDataV2>().getWeatherData();
  }


  @override
  Widget build(BuildContext context) {

    final result = context.watch<WeatherDataV2>();

    //print(result.name);
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 70, 16, 16),
            child: RefreshIndicator(
              onRefresh: () async {

                  getData();
               setState(() {

               });

              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${result.name},${result.country}',
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          result.temparature.toInt().toString(),
                          style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 200,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          '°',
                          style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 100,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topRight,
                            //color: Colors.red,
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                result.weather.toUpperCase(),
                                style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
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
                              image: Image.asset('images/' + context.read<WeatherDataV2>().icon + '.png').image,
                              fit: BoxFit.contain,

                            )
                        ),
                      ),
                    ),
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
                                '${result.humidity}%',
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
                                '${result.visibility}KM',
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
                          InkWell(
                              onTap:(){

                              } ,
                              child: Image.asset('images/' + context.read<WeatherDataV2>().icon + '.png',fit: BoxFit.contain,height: 100,width: 100,)),
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
