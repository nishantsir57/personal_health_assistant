import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/LoginActivities/ForgetPassword.dart';
import 'package:personal_health_assistant/activities/LoginActivities/NewPasswordPage.dart';
import 'package:personal_health_assistant/activities/LoginActivities/loginpage.dart';
import 'package:personal_health_assistant/activities/PersonalDetails/HeightDetails.dart';
import 'package:personal_health_assistant/widgets/personalDetailsText.dart';
import 'package:personal_health_assistant/widgets_login/newEmail.dart';

class WeightDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return WeightDetailWidget();
  }
}

class WeightDetailWidget extends StatefulWidget{
  @override
  WeightDetailWidgetState createState()=>WeightDetailWidgetState();
}

class WeightDetailWidgetState extends State<WeightDetailWidget> {
  static String weighttext="Enter Your Weight";
  static String weightValue;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              height: MediaQuery.of(context).size.height*2,
              child: Padding(
                padding: new EdgeInsets.all(0.1),
                child: ListView(
                  children: <Widget>[
                    textForDetails(weighttext),
                  ],
                ),
              )
          )
      ),
    );
  }

  Widget textForDetails(String text){
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.black54,
        border: Border.all(
          color: Colors.white10,
          width: 10,
        ),
        // borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        children: [
          personalDetailText(weighttext),
          Container(
            width: MediaQuery.of(context).size.width/4,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.network("https://icons-for-free.com/iconfiles/png/512/citycons+levels+meter+icon-1320136425850129711.png",
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
                    onChanged: (value) => weightValue=value,
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>HeightDetail()
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

