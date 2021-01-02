import 'package:flutter/material.dart';

class ActivePlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ActivePlansWidget();
  }
}

class ActivePlansWidget extends StatefulWidget {
  @override
  ActivePlansWidgetState createState() => ActivePlansWidgetState();
}

class ActivePlansWidgetState extends State<ActivePlansWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
      ),
    );
  }
}