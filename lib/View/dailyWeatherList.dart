
import 'package:flutter/material.dart';

class DailyWeatherList extends StatefulWidget {

  DailyWeatherList({ Key? key}) : super(key: key);

  @override
  State<DailyWeatherList> createState() => _DailyWeatherListState();
}

class _DailyWeatherListState extends State<DailyWeatherList> {

  final List<String> dayList = ["Today,18 Sep","Mon,19 Sep","Tue,20 Sep","Wed,21 Sep","Thur,22 Sep"];
  final List<String> hourList = ["9:00 AM","10:00 AM","11:00 AM","12:00 PM","1:00 PM"];
  final List<String> weatherIconList = ["Today,18 Sep","Mon,19 Sep","Tue,20 Sep","Wed,21 Sep","Thur,22 Sep"];

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index ,) {
            return Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 6, 16),
              child: Column(
                children: [
                  Text(dayList[index],
                    style: TextStyle(fontSize: 16),
                  ),
                  Card(
                    // elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.ac_unit_outlined),
                        Container(
                          width: 185,
                          // padding: EdgeInsets.all(8.0),
                          child:  Text(hourList[index],
                              style: TextStyle(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              maxLines: 2),
                        ),
                        // Text("11,000"),
                        Text("30",
                          style: TextStyle(fontSize: 10),
                        )

                      ],
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );

  }
}
