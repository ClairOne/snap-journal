// material
import 'package:flutter/material.dart';
import 'package:snap_journal/theme/style.dart';

Container dialPadButton(IconData icon, String label, String DestinationScreen,
    BuildContext context) {
  return Container(
      margin: const EdgeInsets.all(30.0),
      padding: const EdgeInsets.all(5.0),
      decoration: new BoxDecoration(
        border: new Border.all(
          color: colorMOSSRIVER,
        ),
        borderRadius: new BorderRadius.all(
          const Radius.circular(25.0),
        ),
        color: colorLIMESTONE,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: new Icon(icon),
            color: colorRUBYGRAPEFRUIT,
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
                color: colorMOSSRIVER,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ));
}
