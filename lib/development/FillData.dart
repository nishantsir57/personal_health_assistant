import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:personal_health_assistant/Constants.dart';

class FillData
{
  Future<void> fillData() async
  {
    await FirebaseFirestore.instance.collection('users').doc(Constants.email)
        .get()
        .then((doc){
          Constants.name=doc['name'];
          Constants.phone=doc['phone'];
          Constants.weight=doc['weight'];
          Constants.heightFeet=doc['height_feet'];
          Constants.heightInches=doc['height_inches'];
          Constants.age=doc['age'];
          Constants.targetWeight=doc['target'];
    });
    return;
  }
}