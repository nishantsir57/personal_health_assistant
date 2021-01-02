import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/HomeActivities/home.dart';

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
          child: Image.network("data:image/png;base64,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")
      ),
    );
  }
}
