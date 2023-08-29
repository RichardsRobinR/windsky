import 'package:flutter/material.dart';
import 'package:windsky/View/detailsScreen.dart';
import 'package:provider/provider.dart';
import 'package:windsky/Version%202/weather_datav2.dart';

class WeatherSearchV2 extends StatefulWidget {
  const WeatherSearchV2({Key? key}) : super(key: key);

  @override
  _WeatherSearchV2State createState() => _WeatherSearchV2State();
}

class _WeatherSearchV2State extends State<WeatherSearchV2> {
  final _textcontroller = TextEditingController();
  late String value;

  static const snackBar = SnackBar(
    content: Text('Invalid City'),
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textcontroller.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textcontroller.dispose();
    super.dispose();

  }

  void _printLatestValue() {
    context.read<WeatherDataV2>().cityname = _textcontroller.text;
    context.read<WeatherDataV2>().getWeatherData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Container(
              //width: 350,
              height: 200,

              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.white70),
                  color: Colors.white60,
                  //color: Colors.green,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _textcontroller,
                    decoration: InputDecoration(
                      hintText: 'Enter the City Name',
                      labelText: 'Search',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search_outlined),
                    ),
                  ),
                  SizedBox(height: 20),
                  OutlinedButton(
                      style: ButtonStyle(
                        //backgroundColor: MaterialStateProperty.all(Colors.red),
                        minimumSize:
                        MaterialStateProperty.all(Size.fromHeight(50)),
                      ),
                      onPressed: () {
                       if ( context.read<WeatherDataV2>().statuscode == 200 ) {
                         Navigator.push(context, MaterialPageRoute(builder: (context) {
                           return DetailsV2();
                         }));
                       }
                       else {
                         ScaffoldMessenger.of(context).showSnackBar(snackBar);
                       }
                      },
                      child: Text(
                        "Search",
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          // color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
