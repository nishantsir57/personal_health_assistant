import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/ConsultDoctorActivities/ListOfDoctors.dart';
import 'package:personal_health_assistant/activities/HomeActivities/searchBar.dart';
import 'package:personal_health_assistant/activities/PersonalDetails/WeightDetail.dart';
import 'package:personal_health_assistant/activities/ProfileActivities/profilePageMain.dart';


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
  static String healthPlans = 'Update Exercise Plans';
  static String dietPlans = 'Update Diet Plans';
  static String consultWithDoctor = "Consult With\nDoctor";

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
            MaterialButton(
              color: Colors.black,
              child: Icon(Icons.help_center_sharp,color: Colors.white,),
              onPressed: () async {
                showAlertDialog(context);
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
              getCard(healthPlans,
                  "https://149362069.v2.pressablecdn.com/wp-content/uploads/2020/06/Health-Plans-Icon-300x300.png"),
              getCard(dietPlans,
                  "https://icon-library.com/images/paleo-icon/paleo-icon-4.jpg"),
              getCard(consultWithDoctor,
                  "https://cdn4.iconfinder.com/data/icons/medicine-and-insurances/128/button-online_doctor-computer_monitor-online_consultation-healthcare-512.png")
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Row(
        children: [
          // Text(""),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.thumb_up,color: Colors.blue,),
          )
        ],
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },

    );
    AlertDialog alert = AlertDialog(
      elevation: 20,
      backgroundColor: Colors.black,
      title: Text("Requires Help?\n",
        style: TextStyle(
          color: Colors.white,
          wordSpacing: 2,
          letterSpacing: 1.6,
        ),
      ),
      content: Text("Call us at 1234567890\n\nMail us at help@healthAssistant.com",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        okButton,

      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
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
                        builder: (context) => WeightDetail()));
              } else if (value == dietPlans) {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => WeightDetail()));
              }
              else if (value == consultWithDoctor) {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => DoctorList()));
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
