import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/HomeActivities/home.dart';
import 'package:personal_health_assistant/widgets/personalDetailsText.dart';
import 'package:personal_health_assistant/Constants.dart';
import 'package:personal_health_assistant/development/profile.dart';

class TargetDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return TargetDetailWidget();
  }
}

class TargetDetailWidget extends StatefulWidget{
  @override
  TargetDetailWidgetState createState()=>TargetDetailWidgetState();
}

class TargetDetailWidgetState extends State<TargetDetailWidget> {
  static String targetText="Enter Target Weight";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Container(
            alignment: Alignment.center,
            child: Text(
              'User Details',
              textAlign: TextAlign.center,
              style: TextStyle(
                  wordSpacing: 2.0,
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  color: Colors.white
              ),
            ),
          ),
        ),
        body: new Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: new EdgeInsets.all(0.1),
              child: ListView(
                children: [
                  textForDetails(targetText),

                ],
              ),
            )
        )
    );
  }

  Widget textForDetails(String text){
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.black54,
        border: Border.all(
          color: Colors.white12,
          width: 10,
        ),
        // borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        children: [
          Container(
            margin: new EdgeInsets.only(top: 80,bottom: 38),
            child: Text(
              targetText,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width/4,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.network("https://www.iconpacks.net/icons/1/free-target-icon-1217-thumb.png",
                fit: BoxFit.fitWidth,
                // alignment: Alignment.centerLeft,
              ),
            ),
          ),

          Container(
            // width: 200,
              margin: const EdgeInsets.only(top: 30,bottom: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  color: Colors.white10,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    onChanged: (value) => Constants.targetWeight=value,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent,
                              width: 0.5
                          )
                      ),
                      fillColor: Colors.lightBlueAccent,
                      labelText: 'in kgs',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
          ),
          Container(
            margin: new EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 50, right: 50),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white70,
                    style: BorderStyle.solid,
                    width: 0.5,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                // color: Colors.black,
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  textColor: Colors.white70,
                  color: Colors.black87,
                  child: Text("Next"),
                  onPressed: () async{
                    await Profile().createProfile();
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Home()
                    ));
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

