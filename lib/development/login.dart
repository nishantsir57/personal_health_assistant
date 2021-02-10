import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_health_assistant/Constants.dart';

class Login
{
  Future<String> login() async
  {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: Constants.email, password: Constants.password);
    }on FirebaseAuthException catch(e){
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        return 'User not Found';
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        return 'Wrong Password';
      }
    }
    catch(e1)
    {
      return e1;
    }
    return 'success';
  }
}