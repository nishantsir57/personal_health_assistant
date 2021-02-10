import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_health_assistant/Constants.dart';
import 'package:personal_health_assistant/activities/HomeActivities/home.dart';

class CurrentAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Current Apointment');
    return CurrentAppointmentWidget();
  }
}

class CurrentAppointmentWidget extends StatefulWidget {
  @override
  CurrentAppointmentState createState() => CurrentAppointmentState();
}

class CurrentAppointmentState extends State<CurrentAppointmentWidget> {
  @override
  Widget build(BuildContext context) {
    print('current Appointment state');
    List<QueryDocumentSnapshot> appointments=Constants.appointments;
    int len=0;
    if(appointments != null)
      {
        print('Length is $len');
        len=appointments.length;
      }
    print(len);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              'Appointments',
              style: TextStyle(
                  wordSpacing: 2.0,
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  color: Colors.white),
            ),
            leading: RaisedButton(
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          body: ListView.builder(
            itemCount: len,
              itemBuilder: (context, index) => activeAppointmentInfo(appointments[index]),
          )

          //   (
          //   children: [
          //     activeAppointmentInfo(),
          //     activeAppointmentInfo(),
          //     activeAppointmentInfo(),
          //     activeAppointmentInfo(),
          //     activeAppointmentInfo(),
          //     activeAppointmentInfo(),
          //     activeAppointmentInfo(),
          //   ],
          // )
      ),
    );
  }

  Widget activeAppointmentInfo(QueryDocumentSnapshot doc){
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            tileColor: Colors.red[100],
            title: Center(
              child: Text(
                "Appointment id: #"+doc['id'],
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
            ),
          ),
          ListTile(
            tileColor: Colors.red[50],
            title: Center(
              child: Text(
                "Doctor Name: ${doc['name']}",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                ),
              ),
            ),
            subtitle: Column(
              children: [
                // Text(
                //   "Apppointment Date: 01/03/2021",
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontWeight: FontWeight.normal,
                //   ),
                // ),
                Text(
                  "Apppointment Time: ${doc['time']}",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
