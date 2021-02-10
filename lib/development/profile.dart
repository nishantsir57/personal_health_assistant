import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:personal_health_assistant/Constants.dart';

class Profile
{
  Future<void> createProfile() async
  {
    await FirebaseFirestore.instance.collection('users').doc(Constants.email)
        .set(
      {
        'name' : Constants.name,
        'email' : Constants.email,
        'phone' : Constants.phone,
        'weight' : Constants.weight,
        'height_feet' : Constants.heightFeet,
        'height_inches' : Constants.heightInches,
        'age' : Constants.age,
        'target' : Constants.targetWeight
      }
    );
  }
}