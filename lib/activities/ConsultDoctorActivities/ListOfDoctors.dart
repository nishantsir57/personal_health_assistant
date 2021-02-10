import 'package:flutter/material.dart';
import 'package:personal_health_assistant/activities/ConsultDoctorActivities/SlotAvailabilityPage.dart';

import '../../Constants.dart';

class DoctorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DoctorListWidget();
  }
}

class DoctorListWidget extends StatefulWidget {
  @override
  DoctorListState createState() => DoctorListState();
}

class DoctorListState extends State<DoctorListWidget> {
  static String doctor_Name="Shivang Gangwar";
  static String doctor_experiance="10";
  static String doctor_ImageURL="https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg";
  static String area_of_expertise="Surgeon";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'Available Doctors',
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
          height: double.infinity,
          color: Colors.white12,
          child: ListView(
            children: [
              doctorDetailCard(Constants.d1[0], Constants.d1[2], doctor_ImageURL,Constants.d1[1], Constants.d1),
              doctorDetailCard(Constants.d2[0], Constants.d2[2], doctor_ImageURL,Constants.d2[1], Constants.d2),
            ],
          ),
        ),
      ),
    );
  }

  Widget doctorDetailCard(String doc_name,String doc_experiance,String doc_ImageURL, String Area_of_expertise, List<String> de){
    return Container(
      // color: Colors.white,
      height: MediaQuery.of(context).size.height/2.6,
      child: Card(
        shape: RoundedRectangleBorder(
          side: new BorderSide(
              color: Colors.black,
              width: 1.6
          ),
          // borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        elevation: 3,
        child: InkWell(
          splashColor: Colors.greenAccent,
          onTap: () {
            Constants.d=de;
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => SlotPage()));
          },
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(10),
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage(doc_ImageURL), fit: BoxFit.cover),
                    ),
                  ),//photo of doctor
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(Icons.account_circle_sharp),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(doc_name,
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
                      ),//Name
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(Icons.access_time),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(doc_experiance+" years",
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
                      ),//experience
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(Icons.book),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(Area_of_expertise,
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
                      ),//area of expertise
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(7),
                child: Column(
                  children: [
                    Container(
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black87,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SlotPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                'Book Slot',
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
                                Icons.add_box_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}