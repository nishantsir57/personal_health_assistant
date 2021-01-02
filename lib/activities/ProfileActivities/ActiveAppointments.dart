import 'package:flutter/material.dart';

class DoctorAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DoctorAppointmentWidget();
  }
}

class DoctorAppointmentWidget extends StatefulWidget {
  @override
  DoctorAppointmentState createState() => DoctorAppointmentState();
}

class DoctorAppointmentState extends State<DoctorAppointmentWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
      ),
    );
  }
}