import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget{
@override
Widget build(BuildContext context) {
  return PersonalDetailsWidget();
}
}

class PersonalDetailsWidget extends StatefulWidget{
  @override
  PersonalDetailsWidgetState createState()=>PersonalDetailsWidgetState();
}

class PersonalDetailsWidgetState extends State<PersonalDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
  Widget getPatientInfo(){
    return Container();
  }
}

