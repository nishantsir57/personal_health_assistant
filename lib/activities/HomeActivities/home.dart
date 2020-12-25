import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/LoginActivities/loginpage.dart';
import 'package:personal_health_assistant/activities/personalDetails.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeWidget();
  }
}

class HomeWidget extends StatefulWidget{
  @override
  HomeWidgetState createState()=>HomeWidgetState();
}

class HomeWidgetState extends State<HomeWidget> {
  static String healthPlans = 'Health Plans';
  static String dietPlans = 'Diet Plans';
  static String consultWithDoctor = "Consult With\nDoctor";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'Health Assistant',
          style: TextStyle(
              wordSpacing: 2.0,
              letterSpacing: 2.0,
              fontSize: 15.0,
              color: Colors.white
          ),
        ),
        leading: Icon(
          Icons.account_box_rounded
        ),
      //   actions: [
      //   RaisedButton(
      //   color: Colors.black87,
      //   child: Icon(
      //     Icons.,
      //     // size: 50.0,
      //     color: Colors.white,
      //   ),
      // ),
      //   ],
      ),
      body: new Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: new ListView(
          children: <Widget>[
            getCard(healthPlans,
                "https://149362069.v2.pressablecdn.com/wp-content/uploads/2020/06/Health-Plans-Icon-300x300.png"),
            getCard(dietPlans,
                "https://icon-library.com/images/paleo-icon/paleo-icon-4.jpg"),
            getCard(consultWithDoctor,
                "https://cdn4.iconfinder.com/data/icons/medicine-and-insurances/128/button-online_doctor-computer_monitor-online_consultation-healthcare-512.png")
          ],
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
            onTap: () {
              if (value == healthPlans) {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => PersonalDetails()));
              } else if (value == dietPlans) {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => PersonalDetails()));
              }
              else if (value == consultWithDoctor) {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage()));
              }
            },
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
