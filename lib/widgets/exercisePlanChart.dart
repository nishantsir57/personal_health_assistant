import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/ConsultDoctorActivities/ListOfDoctors.dart';
import 'package:personal_health_assistant/activities/HomeActivities/searchBar.dart';
import 'package:personal_health_assistant/activities/PersonalDetails/WeightDetail.dart';
import 'package:personal_health_assistant/activities/ProfileActivities/profilePageMain.dart';


class ExercisePlanChart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ExercisePlanChartWidget();
  }
}

class ExercisePlanChartWidget extends StatefulWidget{
  @override
  ExercisePlanChartState createState()=>ExercisePlanChartState();
}

class ExercisePlanChartState extends State<ExercisePlanChartWidget> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Health Assistant',
            style: TextStyle(
                wordSpacing: 2.0,
                letterSpacing: 2.0,
                fontSize: 15.0,
                color: Colors.white
            ),
          ),
          leading: RaisedButton(
            color: Colors.black,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
            },
            child: Icon(
              Icons.account_box_rounded,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.search_outlined),
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
              },
            ),

          ],
        ),
        body: new Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: new ListView(
            children: <Widget>[

              ],
          ),
        ),
      ),
    );
  }



  Widget getCard(String value, String pathofImage) {
    return Container(
      color: Colors.white,
      height: MediaQuery
          .of(context)
          .size
          .height / 3.3,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Card(
          shadowColor: Colors.black,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            side: new BorderSide(
                color: Colors.black,
                width: 1.6
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.white70,
          elevation: 3,
          child: InkWell(
            splashColor: Colors.greenAccent,
            onTap: () {},
            child: Center(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Container(
                      child: Image.network(pathofImage,
                        fit: BoxFit.fitWidth,
                        // alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(value,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 2,
                          wordSpacing: 3,
                          color: Colors.black
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
