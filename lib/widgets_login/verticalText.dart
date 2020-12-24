import 'package:flutter/material.dart';

class VerticalTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: VerticalText(),
    );
  }
}
class VerticalText extends StatefulWidget {
  @override
  VerticalTextState createState() => VerticalTextState();
}

class VerticalTextState extends State<VerticalText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 10,right: 5,bottom: 30),
      child: Text(
        'Sign in',
        style: TextStyle(
          color: Colors.white,
          fontSize: 38,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}