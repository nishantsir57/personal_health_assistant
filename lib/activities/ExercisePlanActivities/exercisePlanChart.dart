import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/ConsultDoctorActivities/ListOfDoctors.dart';
import 'package:personal_health_assistant/activities/ExercisePlanActivities/dietPlanChart.dart';
import 'package:personal_health_assistant/activities/HomeActivities/home.dart';
import 'package:personal_health_assistant/activities/PersonalDetails/WeightDetail.dart';
import 'package:personal_health_assistant/activities/ProfileActivities/profilePageMain.dart';

import '../../Constants.dart';

class ExercisePlanChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExercisePlanChartWidget();
  }
}

class ExercisePlanChartWidget extends StatefulWidget {
  @override
  ExercisePlanChartState createState() => ExercisePlanChartState();
}

class ExercisePlanChartState extends State<ExercisePlanChartWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 7,
        child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.red,
                tabs: [
                  Tab(
                    child: Text(
                      "Monday",
                      style: TextStyle(
                          wordSpacing: 1.0,
                          letterSpacing: 1.0,
                          fontSize: 10.0,
                          color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Tuesday",
                      style: TextStyle(
                          wordSpacing: 1.0,
                          letterSpacing: 1.0,
                          fontSize: 10.0,
                          color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Wednesday",
                      style: TextStyle(
                          wordSpacing: 1.0,
                          letterSpacing: 1.0,
                          fontSize: 10.0,
                          color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Thursday",
                      style: TextStyle(
                          wordSpacing: 1.0,
                          letterSpacing: 1.0,
                          fontSize: 10.0,
                          color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Friday",
                      style: TextStyle(
                          wordSpacing: 1.0,
                          letterSpacing: 1.0,
                          fontSize: 10.0,
                          color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Saturday",
                      style: TextStyle(
                          wordSpacing: 1.0,
                          letterSpacing: 1.0,
                          fontSize: 10.0,
                          color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Sunday",
                      style: TextStyle(
                          wordSpacing: 1.0,
                          letterSpacing: 1.0,
                          fontSize: 10.0,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              backgroundColor: Colors.black,
              title: Text(
                'Your Exercise Plan',
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
                  icon: Icon(Icons.switch_left),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DietPlanChart()));
                  },
                ),

              ],
            ),
            body: TabBarView(
              children: [
                dailyExercise(Constants.exercise['monday']),
                dailyExercise(Constants.exercise['tuesday']),
                dailyExercise(Constants.exercise['wednesday']),
                dailyExercise(Constants.exercise['thursday']),
                dailyExercise(Constants.exercise['friday']),
                dailyExercise(Constants.exercise['saturday']),
                dailyExercise(Constants.exercise['sunday']),
              ],
            )),
      ),
    );
  }

  Widget dailyExercise(String exercise) {
    return Container(
        alignment: Alignment.topLeft,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListTile(
                tileColor: Colors.red[100],
                title: Text(
                  "Morning",
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Flexible(
              child: ListTile(
                tileColor: Colors.deepOrange[50],
                title: Text(
                  exercise,
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.black54,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ), // more widgets
          ],
        ));
  }
}
