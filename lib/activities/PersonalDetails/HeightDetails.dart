import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/LoginActivities/ForgetPassword.dart';
import 'package:personal_health_assistant/activities/LoginActivities/NewPasswordPage.dart';
import 'package:personal_health_assistant/activities/LoginActivities/loginpage.dart';
import 'package:personal_health_assistant/activities/PersonalDetails/AgeDetail.dart';
import 'package:personal_health_assistant/widgets/personalDetailsText.dart';
import 'package:personal_health_assistant/widgets_login/newEmail.dart';

class HeightDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HeightDetailWidget();
  }
}

class HeightDetailWidget extends StatefulWidget{
  @override
  HeightDetailWidgetState createState()=>HeightDetailWidgetState();
}

class HeightDetailWidgetState extends State<HeightDetailWidget> {
  static String heighttext="Enter Your Height";
  static String heightValue;



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
                  textForDetails(heighttext),

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
          personalDetailText(heighttext),
          Container(
            width: MediaQuery.of(context).size.width/3,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.network("https://cdn3.iconfinder.com/data/icons/healthcare-and-medicine-12/64/Height-512.png",
                fit: BoxFit.fitWidth,
                // alignment: Alignment.centerLeft,
              ),
            ),
          ),
          Container(
            // width: 200,
              margin: const EdgeInsets.only(top: 30,bottom: 20),
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  color: Colors.white10,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    onChanged: (value) => heightValue=value,
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
                      labelText: 'in feets',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
          ),

          Container(
            // width: 200,
              margin: const EdgeInsets.only(top: 10,bottom: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  color: Colors.white10,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    onChanged: (value) => heightValue=value,
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
                      labelText: 'in inches',
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
                    width: 0.6,
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>AgeDetail()
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

