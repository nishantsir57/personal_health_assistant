import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/ConsultDoctorActivities/ListOfDoctors.dart';

class DoctorAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DoctorAppointmentWidget();
  }
}

class DoctorAppointmentWidget extends StatefulWidget {
  @override
  DoctorAppointmentState createState() => DoctorAppointmentState();
}

class DoctorAppointmentState extends State<DoctorAppointmentWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: Text(
                'Active Appointments',
                style: TextStyle(
                    wordSpacing: 2.0,
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    color: Colors.white
                ),
              ),
            ),
        ),
        body: new ListView(
          children: <Widget>[
            appointmentCard(),
            appointmentCard(),
            appointmentCard(),
            appointmentCard()
            ],
        ),
      ),
    );
  }

  Widget appointmentCard(){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3.0
        )
      ),
      margin: new EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height/2.1,
      child: Column(
        children: [
          Expanded(
            child: Card(
              color: Colors.white,
              elevation: 2.0,
              child: InkWell(
                splashColor: Colors.greenAccent,
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.all(10),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage(DoctorListState.doctor_ImageURL), fit: BoxFit.cover),
                      ),
                    ),//photo of doctor
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 2,right: 10,),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(Icons.account_circle_sharp),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(DoctorListState.doctor_Name,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      letterSpacing: 0.5,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),//Name
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 2,right: 10,),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(Icons.access_time),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(DoctorListState.doctor_experiance+" years",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      letterSpacing: 0.5,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),//experience
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 2,right: 10,),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(Icons.book),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(DoctorListState.area_of_expertise,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      letterSpacing: 0.5,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), //area of expertise
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.lerp(Alignment.center, Alignment.center, 10),
            margin: new EdgeInsets.all(10.0),
            color: Colors.amberAccent,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("SlotPageWidgetState.slotBooked.toString()\nGet the string of slot booked for doctors appointment",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: 0.5,
                    color: Colors.black
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}