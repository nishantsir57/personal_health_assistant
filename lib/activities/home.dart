import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/LoginActivities/loginpage.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeWidget();
  }

}

class HomeWidget extends StatefulWidget{
  @override
  HomeWidgetState createState()=>HomeWidgetState();
  }


class HomeWidgetState extends State<HomeWidget>{
  @override
  Widget build(BuildContext context) {

    return LoginPage();
  }
}

