import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/ExercisePlanActivities/currentDoctorApp.dart';
import 'package:personal_health_assistant/activities/ProfileActivities/ActivePlans.dart';
import 'package:personal_health_assistant/activities/ProfileActivities/LogoutButton.dart';
import 'package:personal_health_assistant/Constants.dart';
import 'package:personal_health_assistant/activities/ExercisePlanActivities/dietPlanChart.dart';
import 'package:personal_health_assistant/activities/ExercisePlanActivities/exercisePlanChart.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfilePageWidget();
  }
}

class ProfilePageWidget extends StatefulWidget {
  @override
  ProfilePageWidgetState createState() => ProfilePageWidgetState();
}

class ProfilePageWidgetState extends State<ProfilePageWidget> {
  static String profilePicutrePath =
      "https://webmeup.com/upload/blog/lead-image-105.png";
  static String activePlanText="Check Active Plans";
  static String doctorAppointText="Check Active Appointments";


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text(
            "Profile",
            style: TextStyle(
                fontSize: 15,
                letterSpacing: 2.0,
                wordSpacing: 2.0,
                color: Colors.white),
          )),
        ),
        body: new Container(
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Expanded(
                child: ListView(children: <Widget>[
                  // profilePicture(profilePicutrePath),
                  dataOfPerson("Name: from newName widget"),
                  dataOfPerson("Email: from NewEmail widget"),
                  dataOfPerson("Phone: from inputPhone Widget"),
                  dataOfPerson("Constants.age"),
                  dataOfPerson("Constants.weight"),
                  dataOfPerson("Constants.targetWeight"),
                  dataOfPerson("{Constants.heightFeet} feets {Constants.heightInches} inches"),
                  plansButton(activePlanText),
                  plansButton(doctorAppointText),
                ]),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: LogoutButton())
            ],
          ),
        ),
      ),
    );
  }

  Widget plansButton(String textplan){
    return Container(
      margin: new EdgeInsets.all(7.0),
      // color: Colors.white10,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Card(
          color: Colors.black,
          child: InkWell(
            splashColor: Colors.red,
            onTap: () {
              if(textplan==activePlanText){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => DietPlanChart()));
              }else if(textplan==doctorAppointText){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => CurrentAppointment()));
              }
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(textplan,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      letterSpacing: 2,
                      wordSpacing: 2,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget dataOfPerson(String personData) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            border: Border.all(
              color: Colors.black26,

            )
          ),
          alignment: Alignment.center,
          // color: Colors.white,
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: SizedBox(
            child: Text(
              personData,
              style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ));
  }

  Widget profilePicture(String ppPath) {
    return Center(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage(ppPath), fit: BoxFit.fill),
            ),
          ),
        ]));
  }
}
