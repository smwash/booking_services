import 'package:booking_services/constants.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
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
          ListTile(
            title: Text(
              'Booking Seat',
              style: TextStyle(
                  color: isSelected == isSelected ? Colors.white : kRedcolor,
                  fontSize: 18.0),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20.0,
            ),
            onTap: () {
              isSelected = isSelected;
            },
          ),
        ],
      ),
    );
  }
}
