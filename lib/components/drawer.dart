import 'package:booking_services/constants.dart';
import 'package:flutter/material.dart';

import 'drawerTile.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: kBlackcolor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Services',
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 1.3,
                      fontFamily: 'Raleway'),
                ),
                InkWell(
                  focusColor: kRedcolor,
                  child: Icon(
                    Icons.compare_arrows,
                    color: Colors.white,
                    size: 35.0,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          DrawerTile(text: 'Booking Seat'),
          DrawerTile(text: 'Reviews'),
          DrawerTile(text: 'Settings'),
          DrawerTile(text: 'Support'),
          DrawerTile(text: 'Terms & Condition'),
          DrawerTile(text: 'Sign Out'),
          Container(
            margin: EdgeInsets.only(top: 160.0, left: 10.0, right: 10.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              title: Text(
                'Be-A Influencer',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Providing full free food sponsor',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: kRedcolor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'Get Pro',
                  style: TextStyle(fontSize: 16.5, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
