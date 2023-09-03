import 'package:flutter/material.dart';
import 'package:loginpage/Screens/SecondScreen.dart';
import 'package:loginpage/Screens/SignUpScreen.dart';
import 'package:loginpage/Screens/StudentCouncil.dart';
import 'package:loginpage/Screens/WelcomeScreen.dart';
import 'package:loginpage/Screens/idspage.dart';
import 'package:loginpage/Screens/vnitclubs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/secondScreen': (context) => SecondScreen(),
        '/signUpScreen': (context) => SignUpScreen(),
        '/studentcouncil': (context) => StudentCouncil(),
        '/vnitclubs': (context) => VnitClubs(),
          '/idspage' : (context) => IdsPage(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 600, // Set your maximum width here
            ),
            child: WelcomeScreen(), // You can replace this with your main content
          ),
        ),
      ),
    );
  }
}
