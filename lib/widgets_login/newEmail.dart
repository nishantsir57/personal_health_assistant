import 'package:flutter/material.dart';
import 'package:personal_health_assistant/Constants.dart';
class NewEmailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: NewEmail(),
    );
  }
}
class NewEmail extends StatefulWidget {
  @override
  NewEmailState createState() => NewEmailState();
}

class NewEmailState extends State<NewEmail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 50, right: 50),
      child: Container(
        color: Colors.white10,
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          onChanged: (value) => Constants.email=value,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 0.5
                )
            ),
            fillColor: Colors.lightBlueAccent,
            labelText: 'Email*',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}