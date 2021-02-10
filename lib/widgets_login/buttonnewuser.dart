import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/HomeActivities/home.dart';
import 'package:personal_health_assistant/activities/LoginActivities/loginpage.dart';
import 'package:personal_health_assistant/activities/PersonalDetails/WeightDetail.dart';
import 'package:personal_health_assistant/development/signup.dart';


class ButtonNewUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonNewUser(),
    );
  }
}
class ButtonNewUser extends StatefulWidget {
  @override
  ButtonNewUserState createState() => ButtonNewUserState();
}


class ButtonNewUserState extends State<ButtonNewUser> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white70,
                style: BorderStyle.solid,
                width: 0.5,
              ),
              color: Colors.black87,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: FlatButton(
              onPressed: () async{
               String status =await Signup().signup();
               if(status == 'success') {
                 await Signup().createUser();
                 Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => WeightDetail())
                 );
               }
               else
                 {
                   showDialog(
                     context: context,
                     builder: (BuildContext context) {
                       return new AlertDialog(
                         title: new Text(status),
                         // content: new Text(status),
                       );
                     },
                   );
                 }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'SignUp',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.app_settings_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: new EdgeInsets.only(top: 20,),
            // color: Colors.white10,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    5.0, // horizontal, move right 10
                    1.0, // vertical, move down 10
                  ),
                ),
              ],
              color: Colors.black87,
              borderRadius: BorderRadius.circular(30),
            ),
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage())
                  );
                },
                child: Text(
                  'Already an User? Sign in!',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white54,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}