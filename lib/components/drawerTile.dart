import 'package:flutter/material.dart';

import '../constants.dart';

class DrawerTile extends StatefulWidget {
  final String text;
  final Function press;

  DrawerTile({@required this.text, this.press});

  @override
  _DrawerTileState createState() => _DrawerTileState();
}

class _DrawerTileState extends State<DrawerTile> {
  bool isSelected = true;

  changeColor() {
    setState(() {
      isSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.text,
        style: TextStyle(
            color: isSelected ? Colors.white : kRedcolor, fontSize: 18.0),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
        size: 20.0,
      ),
      onTap: () => changeColor(),
    );
  }
}
