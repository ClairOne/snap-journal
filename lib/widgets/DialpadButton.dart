// material
import 'package:flutter/material.dart';

Column DialPadButton(IconData icon, String label, String DestinationScreen, BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        icon: new Icon(icon),
        color: Colors.purple,
        alignment: Alignment.center,
        iconSize: 64.0,
        padding: const EdgeInsets.all(10.0),
        onPressed: () {
          Navigator.pushNamed(context, DestinationScreen);
        },
      ),
      Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  );
}