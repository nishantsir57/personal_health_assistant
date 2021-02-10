import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/LoginActivities/ForgetPassword.dart';
import 'package:personal_health_assistant/activities/HomeActivities/home.dart';
import 'package:personal_health_assistant/activities/LoginActivities/newuser_page.dart';
import 'package:personal_health_assistant/development/DoctorsDetails.dart';
import 'package:personal_health_assistant/development/FillData.dart';
import 'package:personal_health_assistant/development/login.dart';

class LoginButtonWidget extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Container(
    child: LoginButton(),
  );
}
}
class LoginButton extends StatefulWidget{
  @override
    LoginButtonState createState()=>LoginButtonState();
  }

class LoginButtonState extends State<LoginButton>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 40, right: 40, bottom: 20),
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
                String status=await Login().login();
                await DoctorsDetails().doctorsDetails();
                if(status == 'success') {
                  await FillData().fillData();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home())
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
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.login_rounded,
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
                    MaterialPageRoute(builder: (context)=>ForgetPage())
                  );
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white54,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
          Container(
            margin: new EdgeInsets.only(top: 20, ),
            height: 30,
            // color: Colors.white10,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 3.0, // has the effect of softening the shadow
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
              padding: const EdgeInsets.all(1.0),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewUser())
                  );
                },
                child: Text(
                  'New User? Sign up!',
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