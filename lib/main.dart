import 'package:flutter/material.dart';
import 'package:loginpage/Screens/SecondScreen.dart';
import 'package:loginpage/Screens/SignUpScreen.dart';
import 'package:loginpage/Screens/StudentCouncil.dart';
import 'package:loginpage/Screens/WelcomeScreen.dart';
import 'package:loginpage/Screens/vnitclubs.dart';


void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {


  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {

        '/secondScreen' : (context) =>SecondScreen(),
        '/signUpScreen' : (context) =>SignUpScreen(),
        '/studentcouncil' : (context) => StudentCouncil(),
        '/vnitclubs' : (context) => VnitClubs(),

      },
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
