import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/ConsultDoctorActivities/ListOfDoctors.dart';
import 'package:personal_health_assistant/activities/ExercisePlanActivities/exercisePlanChart.dart';
import 'package:personal_health_assistant/activities/HomeActivities/home.dart';
import 'package:personal_health_assistant/activities/PersonalDetails/WeightDetail.dart';
import 'package:personal_health_assistant/activities/ProfileActivities/profilePageMain.dart';

import '../../Constants.dart';

class DietPlanChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DietPlanChartWidget();
  }
}

class DietPlanChartWidget extends StatefulWidget {
  @override
  DietPlanChartState createState() => DietPlanChartState();
}

class DietPlanChartState extends State<DietPlanChartWidget> {
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
                'Your Diet Plan',
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
                            builder: (context) => ExercisePlanChart()));
                  },
                ),

              ],
            ),
            body: TabBarView(
              children: [
                dailyExercise(Constants.diet['monday'][0], Constants.diet['monday'][1], Constants.diet['monday'][2]),
                dailyExercise(Constants.diet['tuesday'][0], Constants.diet['tuesday'][1], Constants.diet['tuesday'][2]),
                dailyExercise(Constants.diet['wednesday'][0], Constants.diet['wednesday'][1], Constants.diet['wednesday'][2]),
                dailyExercise(Constants.diet['thursday'][0], Constants.diet['thursday'][1], Constants.diet['thursday'][2]),
                dailyExercise(Constants.diet['friday'][0], Constants.diet['friday'][1], Constants.diet['friday'][2]),
                dailyExercise(Constants.diet['saturday'][0], Constants.diet['saturday'][1], Constants.diet['saturday'][2]),
                dailyExercise(Constants.diet['sunday'][0], Constants.diet['sunday'][1], Constants.diet['sunday'][2]),
              ],
            )),
      ),
    );
  }

  Widget dailyExercise(String breakfast, String lunch, String dinner) {
    return Container(
        alignment: Alignment.topLeft,
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Flexible(
              child: ListTile(
                tileColor: Colors.red[100],
                title: Text(
                  "Breakfast",
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
                  breakfast,
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.black54,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Divider(),
            Flexible(
              child: ListTile(
                tileColor: Colors.purple[100],
                title: Text(
                  "Lunch",
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Flexible(
              child: ListTile(
                tileColor: Colors.purple[50],
                title: Text(
                  lunch,
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.black54,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Divider(),
            Flexible(
              child: ListTile(
                tileColor: Colors.green[100],
                title: Text(
                  "Dinner",
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Flexible(
              child: ListTile(
                tileColor: Colors.green[50],
                title: Text(
                  dinner,
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.black54,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            // more widgets
          ],
        ));
  }
}
