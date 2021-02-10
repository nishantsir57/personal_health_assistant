import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_health_assistant/activities/ConsultDoctorActivities/ListOfDoctors.dart';
import 'package:personal_health_assistant/activities/ConsultDoctorActivities/SlotAvailabilityPage.dart';
// import 'package:personal_health_assistant/activities/HomeActivities/HelpPopUp.dart';
import 'package:personal_health_assistant/activities/HomeActivities/home.dart';
import 'package:personal_health_assistant/activities/HomeActivities/searchBar.dart';
import 'package:personal_health_assistant/activities/LoginActivities/ForgetPassword.dart';
import 'package:personal_health_assistant/activities/LoginActivities/NewPasswordPage.dart';
import 'package:personal_health_assistant/activities/LoginActivities/loginpage.dart';
import 'package:personal_health_assistant/activities/LoginActivities/newuser_page.dart';
import 'package:personal_health_assistant/activities/PersonalDetails/HeightDetails.dart';
import 'package:personal_health_assistant/activities/PersonalDetails/TargetDetail.dart';
import 'package:personal_health_assistant/activities/PersonalDetails/WeightDetail.dart';
import 'package:personal_health_assistant/activities/ProfileActivities/ActivePlans.dart';
import 'package:personal_health_assistant/activities/ProfileActivities/profilePageMain.dart';
import 'package:personal_health_assistant/activities/ExercisePlanActivities/dietPlanChart.dart';
import 'package:personal_health_assistant/activities/ExercisePlanActivities/exercisePlanChart.dart';
import 'package:personal_health_assistant/development/login.dart';

void main()async {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return LoginPage() ;
  }
}