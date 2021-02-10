import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/HomeActivities/home.dart';

import '../../Constants.dart';

class AppointmentConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppointmentConfirmPageWidget();
  }
}

class AppointmentConfirmPageWidget extends StatefulWidget {
  @override
  AppointmentConfirmPageWidgetState createState() =>
      AppointmentConfirmPageWidgetState();
}

class AppointmentConfirmPageWidgetState
    extends State<AppointmentConfirmPageWidget> {
  static int s1 = 1, s2 = 1, s3 = 1, s4 = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Booking Confirmed',
            style: TextStyle(
                wordSpacing: 2.0,
                letterSpacing: 2.0,
                fontSize: 15.0,
                color: Colors.white),
          ),
        ),
      ),
      body: new Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  imageOfConfirmation()
                  ],
              ),
            ),
            goToHome()
          ],
        ),
      ),
    ));
  }

  Widget goToHome() {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 50,
            // width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 1.0,
              ),
              color: Colors.red,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        'Go To Home',
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
                        Icons.add_shopping_cart_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget imageOfConfirmation(){
    return Center(
      child: Container(
        margin: new EdgeInsets.all(200),
        height: 100,
          width: 100,
          child: Image.network("https://cdn.iconscout.com/icon/free/png-512/kill-1738783-1476942.png"),
    ),
    );
  }
}
