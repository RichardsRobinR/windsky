import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:windsky/Version%202/weather_datav2.dart';

import 'dailyWeatherList.dart';

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
    final List<Color> lightblue = [Color(0xFF4BE2E3), Color(0xFF28E2CE),Color(0xFF26ADA0)];
    final List<Color> orange = [Color(0xFFFAE177), Color(0xFFFEC68D),Color(0xFFFFBE94)];
    final List<Color> orange1 = [Color(0xFFFAE177), Color(0xFFFEC68D),Color(0xFFF39F86)];
    //print(result.name);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: orange1)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: RefreshIndicator(
              onRefresh: () async {
                  getData();
               setState(() {
               });
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month))
                      ],
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Container(
                      width: 350,
                      height: 350,
                      //color: Colors.amberAccent,
                      decoration: BoxDecoration(
                        //color: Colors.amberAccent,
                          image: DecorationImage(
                            image: Image.asset('images/' + "01d" + '.png').image,
                            fit: BoxFit.fitWidth,
                          )
                      ),
                    ),
                    Text(
                      "It's hot",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),

                    Text(
                      "30",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 125,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.wind) ,
                        SizedBox(width: 10,),
                        Text('2 km/h'),
                        SizedBox(width: 20,),
                        Icon(CupertinoIcons.wind),
                        SizedBox(width: 10,),
                        Text('32 %'),

                      ],
                    ),
                    DailyWeatherList(),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
