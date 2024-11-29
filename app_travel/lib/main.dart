// import 'package:app_travel/mystatefulwidget.dart';
// import 'package:flutter/material.dart';

// void main(){
//   runApp(Mystatefulwidget());
// }

// import 'package:app_travel/materimodulscreens/formscreen6.dart';
import 'package:app_travel/screens/homescreen.dart';
// import 'package:app_travel/screens/splashscreen.dart';
// import 'package:app_travel/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomeScreen(),
     );
  }
}
