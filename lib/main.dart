import 'package:around_the_world/constants.dart';
import 'package:around_the_world/screens/complete_profile/complete_profile_screen.dart';
import 'package:around_the_world/screens/homepage/home_screen.dart';
import 'package:around_the_world/screens/log_in/log_in_screen.dart';
import 'package:around_the_world/screens/profile_completed/profile_completed_screen.dart';
import 'package:around_the_world/screens/splash/splash_screen.dart';
import 'package:around_the_world/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Around The World',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Muli"),
      home: SplashScreen(),
    );
  }
}
