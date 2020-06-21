import 'package:booking_services/components/drawer.dart';
import 'package:booking_services/constants.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'BOOKING',
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontFamily: 'Raleway',
              letterSpacing: 1.5,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(
              Icons.person_pin,
              color: Colors.black,
              size: 33.0,
            ),
          )
        ],
      ),
      drawer: Theme(
        data: ThemeData(canvasColor: kBlackcolor),
        child: SideMenu(),
      ),
      body: Container(),
    );
  }
}
