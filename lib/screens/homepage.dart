import 'package:booking_services/components/drawer.dart';
import 'package:booking_services/components/iconContainer.dart';
import 'package:booking_services/constants.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int person = 0;

  String getPlural() {
    if (person < 2) {
      return 'Person';
    } else {
      return 'People';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1.0,
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
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: kBlackcolor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Become-A Member',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Raleway'),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Providing full free food sponsor',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                            fontFamily: 'Raleway'),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$45',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22.0),
                            ),
                            TextSpan(
                                text: '/m',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white70))
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: kRedcolor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          'Get Pro',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.5,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Set Details',
                style: TextStyle(
                    fontSize: 23.0,
                    letterSpacing: 1.1,
                    fontFamily: 'Raleway-SemiBold',
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            // SizedBox(height: 10.0),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 10),
                      blurRadius: 6.0),
                ],
              ),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
                leading: IconContainer(
                  color: kRedcolor.withOpacity(0.6),
                  icon: Icons.alarm,
                  iconColor: Colors.white,
                ),
                title: Text(
                  'CHECK IN-OUT',
                  style: TextStyle(
                      fontSize: 17.5,
                      color: Colors.black54,
                      letterSpacing: 1.1),
                ),
                subtitle: Text(
                  '09:30 - 11:00 PM',
                  style: TextStyle(
                      fontSize: 19.0,
                      fontFamily: 'Raleway-SemiBold',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      letterSpacing: 1.1),
                ),
                trailing: Icon(Icons.more_vert, size: 29.0),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 10),
                      blurRadius: 6.0),
                ],
              ),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
                leading: IconContainer(
                  color: kYellowcolor,
                  icon: Icons.calendar_today,
                  iconColor: Colors.white,
                ),
                title: Text(
                  'DATE',
                  style: TextStyle(
                      fontSize: 17.5,
                      color: Colors.black54,
                      letterSpacing: 1.1),
                ),
                subtitle: Text(
                  '15 JAN 2020',
                  style: TextStyle(
                      fontSize: 19.0,
                      fontFamily: 'Raleway-SemiBold',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      letterSpacing: 1.1),
                ),
                trailing: Icon(Icons.more_vert, size: 29.0),
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 10),
                      blurRadius: 6.0),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconContainer(
                        icon: Icons.person,
                        color: kImage1color,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      IconContainer(
                        icon: Icons.person,
                        color: kImage2color,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      IconContainer(
                        icon: Icons.person,
                        color: kImage3color,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'GUEST NUMBER',
                      style: TextStyle(
                          fontSize: 14.5,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '${person.toString()} ' '${getPlural()}',
                      style: TextStyle(
                          fontSize: 14.5,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Raleway-SemiBold'),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kYellowcolor,
                        thumbColor: kYellowcolor,
                        overlayColor: kYellowcolor.withOpacity(0.5),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 15.0)),
                    child: Slider(
                      value: person.toDouble(),
                      min: 1.0,
                      max: 10.0,
                      inactiveColor: kGreyColor,
                      onChanged: (double value) {
                        setState(() {
                          person = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kGreencolor),
                child: Text(
                  'Book Your Seat',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: 'Raleway-SemiBold',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
