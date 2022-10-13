import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.cyan,
                Colors.grey.shade300,
                Colors.cyan,
                Colors.grey.shade300,
                Colors.cyan,
                Colors.cyan,
                Colors.cyan,
                Colors.cyan,
              ])),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Spacer(),
                const Text(
                    "Awesome Flutter Widgets",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                CircularProgressIndicator(
                  valueColor:
                  AlwaysStoppedAnimation<Color>(Colors.grey.shade300),
                ),
                const Spacer(),
              ]
          )
      ),
    );
  }
  checkLogin() async {
    Timer(
        const Duration(seconds: 3),
            () => Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => const HomeScreen()))
    );
  }

  @override
  void initState() {
    checkLogin();
    super.initState();
  }
}
