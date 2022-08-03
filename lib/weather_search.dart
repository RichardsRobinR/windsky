// import 'package:flutter/material.dart';
// import 'package:windsky/weather_data.dart';
//
// class WeatherSearch extends StatefulWidget {
//   const WeatherSearch({Key key}) : super(key: key);
//
//   @override
//   _WeatherSearchState createState() => _WeatherSearchState();
// }
//
// class _WeatherSearchState extends State<WeatherSearch> {
//   final _textcontroller = TextEditingController();
//   String value;
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _textcontroller.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//           constraints: BoxConstraints.expand(),
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: Image.asset('images/Morning.png').image,
//           fit: BoxFit.fitWidth,
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Center(
//           child: Container(
//             //width: 350,
//             height: 200,
//
//             decoration: BoxDecoration(
//                 border: Border.all(width: 3, color: Colors.white70),
//                 color: Colors.white60,
//                 //color: Colors.green,
//                 borderRadius: BorderRadius.circular(20)),
//             padding: EdgeInsets.all(16),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 TextFormField(
//                   controller: _textcontroller,
//                   decoration: InputDecoration(
//                     hintText: 'Enter the City Name',
//                     labelText: 'Search',
//                     // enabledBorder: OutlineInputBorder(
//                     //   borderSide: BorderSide(color: Colors.red)
//                     // ),
//                     // focusedBorder: OutlineInputBorder(
//                     //     borderSide: BorderSide(color: Colors.red)
//                     // ),
//                     border: OutlineInputBorder(),
//                     suffixIcon: Icon(Icons.search_outlined),
//                   ),
//                   style: TextStyle(
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 OutlinedButton(
//                     style: ButtonStyle(
//                       //backgroundColor: MaterialStateProperty.all(Colors.red),
//                       minimumSize:
//                           MaterialStateProperty.all(Size.fromHeight(50)),
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         value = _textcontroller.text;
//                         print(value);
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     WeatherData(value: value)));
//                       });
//                     },
//                     child: Text(
//                       "Search",
//                       style: TextStyle(
//                         fontFamily: 'Rubik',
//                         fontSize: 25,
//                         fontWeight: FontWeight.w400,
//                         // color: Colors.white,
//                       ),
//                     )),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ));
//   }
// }
