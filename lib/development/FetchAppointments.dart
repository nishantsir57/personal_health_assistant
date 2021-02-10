import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:personal_health_assistant/Constants.dart';

class FetchAppointments
{
  Future<void> fetchAppointments()async
  {
    print('fetching appointments ');
    await FirebaseFirestore.instance.collection('users').doc(Constants.email)
    .collection('apointments')
    .get()
    .then((doc){
      int len=doc.size;
      int i=0;
      List<QueryDocumentSnapshot> l=new List(len);
      doc.docs.forEach((element) {
        print('fetching appointments ${element}');
        l[i]=element;
        i++;
      });
      Constants.appointments=l;
    });
    return;
  }
}