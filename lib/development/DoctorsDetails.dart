import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:personal_health_assistant/Constants.dart';

class DoctorsDetails {
  Future<void> doctorsDetails() async {
    List<String> l=new List(9);
    List<String> l1=new List(9);
    await FirebaseFirestore.instance
        .collection('doctor')
        .doc('doctor1')
        .get()
        .then((doc) {
      l[0]=doc['name'].toString();
      l[1]=doc['area'].toString();
      l[2]=doc['exp'].toString();
      l[3]=doc['1100'].toString();
      l[4]=doc['1200'].toString();
      l[5]=doc['1300'].toString();
      l[6]=doc['1400'].toString();
      l[7]=doc['1500'].toString();
      l[8]=doc['1600'].toString();
      Constants.d1=l;
    });
    await FirebaseFirestore.instance
        .collection('doctor')
        .doc('doctor2')
        .get()
        .then((doc) {
      l1[0]=doc['name'].toString();
      l1[1]=doc['area'].toString();
      l1[2]=doc['exp'].toString();
      l1[3]=doc['1100'].toString();
      l1[4]=doc['1200'].toString();
      l1[5]=doc['1300'].toString();
      l1[6]=doc['1400'].toString();
      l1[7]=doc['1500'].toString();
      l1[8]=doc['1600'].toString();
      Constants.d2=l1;
    });
  }
}
