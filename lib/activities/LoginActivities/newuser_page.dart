

import 'package:flutter/material.dart';
import 'package:personal_health_assistant/widgets_login/buttonnewuser.dart';
import 'package:personal_health_assistant/widgets_login/inputPhone.dart';
import 'package:personal_health_assistant/widgets_login/newEmail.dart';
import 'package:personal_health_assistant/widgets_login/newName.dart';
import 'package:personal_health_assistant/widgets_login/password.dart';
import 'package:personal_health_assistant/widgets_login/signup.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
          ),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SingUp(),
                  // TextNew(),
                  NewName(),
                  InputPhone(),
                  NewEmail(),
                  // Adhaar(),
                  PasswordInput(),
                  ButtonNewUser(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}