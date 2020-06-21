import 'package:booking_services/constants.dart';
import 'package:booking_services/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking services UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: kBlackcolor,
        accentColor: kRedcolor,
      ),
      home: Homepage(),
    );
  }
}
