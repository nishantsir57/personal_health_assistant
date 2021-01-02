import 'package:flutter/material.dart';

Widget personalDetailText(String directtext) {
  return Container(
    alignment: Alignment.center,
    margin: new EdgeInsets.only(top: 75, bottom: 40, left: 20, right: 20),
    child: Padding(
      padding: new EdgeInsets.all(10.0),
      child: Text(
        directtext,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 30.0,
          letterSpacing: 2.0,
          wordSpacing: 3.0,
        ),
      ),
    ),
  );
}
