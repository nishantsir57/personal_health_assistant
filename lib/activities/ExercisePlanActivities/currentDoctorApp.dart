import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/ConsultDoctorActivities/ListOfDoctors.dart';
import 'package:personal_health_assistant/activities/ExercisePlanActivities/dietPlanChart.dart';
import 'package:personal_health_assistant/activities/HomeActivities/home.dart';
import 'package:personal_health_assistant/activities/HomeActivities/searchBar.dart';
import 'package:personal_health_assistant/activities/PersonalDetails/WeightDetail.dart';
import 'package:personal_health_assistant/activities/ProfileActivities/profilePageMain.dart';

class CurrentAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            actions: [
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.search_outlined),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchBarDemoApp()));
                },
              ),
            ],
          ),
          body: ListView(
            children: [
              activeAppointmentInfo(),
              activeAppointmentInfo(),
              activeAppointmentInfo(),
              activeAppointmentInfo(),
              activeAppointmentInfo(),
              activeAppointmentInfo(),
              activeAppointmentInfo(),
            ],
          )),
    );
  }

  Widget activeAppointmentInfo(){
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            tileColor: Colors.red[100],
            title: Center(
              child: Text(
                "Appointment id: #879",
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
                "Doctor Name: Shivang Gangwar",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                ),
              ),
            ),
            subtitle: Column(
              children: [
                Text(
                  "Apppointment Date: 01/03/2021",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  "Apppointment Time: 12:00 PM",
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
