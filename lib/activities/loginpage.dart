
import 'package:flutter/material.dart';
import 'package:personal_health_assistant/widgets_login/buttonLogin.dart';
import 'package:personal_health_assistant/widgets_login/newEmail.dart';
import 'package:personal_health_assistant/widgets_login/password.dart';
import 'package:personal_health_assistant/widgets_login/verticalText.dart';

class LoginPage extends  StatefulWidget {
  @override
    _LoginPageState createState()=> _LoginPageState();
  }


class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.black, Colors.black54]),
            color: Color(0xff5c0632),
          ),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  VerticalText(),
                  NewEmail(),
                  PasswordInput(),
                  LoginButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
