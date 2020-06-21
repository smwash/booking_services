import 'package:booking_services/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking services UI',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
