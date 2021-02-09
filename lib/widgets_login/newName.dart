import 'package:flutter/material.dart';
import 'package:personal_health_assistant/Constants.dart';

class NewNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: NewName(),
    );
  }
}
class NewName extends StatefulWidget {
  @override
  NewNameState createState() => NewNameState();
}

class NewNameState extends State<NewName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
      child: Container(
        color: Colors.white10,

        height: 50,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          onChanged: (value) => Constants.name=value,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
           border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              width: 0.2
              )
            ),
            fillColor: Colors.white,
            labelText: 'Name',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}