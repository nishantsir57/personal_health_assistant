import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/ConsultDoctorActivities/AppointmentConfirmed.dart';
import 'package:personal_health_assistant/activities/ConsultDoctorActivities/SlotList.dart';
import 'package:personal_health_assistant/development/FetchAppointments.dart';
import 'package:personal_health_assistant/development/SlotConfirmation.dart';
import 'package:toast/toast.dart';

import '../../Constants.dart';
class SlotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlotPageWidget();
  }
}

class SlotPageWidget extends StatefulWidget {
  @override
  SlotPageWidgetState createState() => SlotPageWidgetState();
}

class SlotPageWidgetState extends State<SlotPageWidget> {
  static String t1 = "11:00AM to 12:00PM";
  static String t2 = "12:00PM to 01:00PM";
  static String t3 = "01:00PM to 02:00PM";
  static String t4 = "02:00PM to 03:00PM";
  static String t5 = "03:00AM to 04:00PM";
  static String t6 = "04:00AM to 05:00PM";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'Available Slots',
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
                    SlotList()
                  ],
                ),
              ),
              slotConfirmButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget slotTimingCards(String time) {
    return Container(
      margin: new EdgeInsets.only(top: 20, bottom: 2, left: 30, right: 30),
      // color: Colors.white10,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: InkWell(
          child: FlatButton(
            onPressed: () {},
            child: Text(
              time,
              style: TextStyle(
                fontSize: 13,
                wordSpacing: 2,
                letterSpacing: 1,
                color: Colors.black,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ),
    );
  }


  Widget slotConfirmButton() {
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
              onPressed: () async{
                if (SlotListState.selectedUser != null) {
                  Constants.slotSelected=SlotListState.selectedUser.userId;
                  await SlotConfirmation().slotConfirmation();
                  await FetchAppointments().fetchAppointments();
                  // slotBooked=SlotListState.selectedUser.toString();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AppointmentConfirmPage()));
                }
                else{
                  showToast("Please select a slot",duration: Toast.LENGTH_SHORT,gravity: 130);
                }
              },
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        'Confirm Slot',
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
  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity, backgroundColor: Colors.deepOrange,textColor: Colors.black);
  }
}
