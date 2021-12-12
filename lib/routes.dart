import 'dart:js';

import 'package:flutter/material.dart';
import 'package:around_the_world/screens/welcome/welcome_screen.dart';
import 'package:around_the_world/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
};
