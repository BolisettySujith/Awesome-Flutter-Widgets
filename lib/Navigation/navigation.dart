import 'package:flutter/material.dart';
import '../Components/all_widgets.dart';
import '../Screens/home_screen.dart';
import '../Screens/splash_screen.dart';

class Navigate{
  static Map<String, Widget Function(BuildContext)> routes =   {
    '/' : (context) => const HomeScreen(),
    '/initial-screen' : (context) => const SplashScreen(),
    '/wid1' : (context) => const Widget1(),
  };
}