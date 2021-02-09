import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_health_assistant/Constants.dart';


class Signup
{
  Future<String> signup()async
  {
    final email=Constants.email;
    final password=Constants.password;

    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        return 'password is too weak';
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        return ' Account already exist';
      }
    } catch (e) {
      print(e);
    }
    return 'success';
  }
  Future<void> createUser() async
  {
    await FirebaseFirestore.instance.collection('users').doc(Constants.email).set(
      {
        'name' : Constants.name,
        'email' : Constants.email,
        'phone' : Constants.phone,
      }
    );
    return;
  }
}