import 'package:flutter/material.dart';

class PasswordInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PasswordInput(),
    );
  }
}
class PasswordInput extends StatefulWidget {
  @override
  PasswordInputState createState() => PasswordInputState();
}

class PasswordInputState extends State<PasswordInput> {
  static String password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 50, right: 50),
      child: Container(
        color: Colors.white10,
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          onChanged: (value) => password=value,
          style: TextStyle(
            color: Colors.white,
          ),
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.greenAccent,
                width: 0.1
              )
            ),
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}