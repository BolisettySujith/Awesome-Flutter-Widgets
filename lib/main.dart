import 'package:flutter/material.dart';
import 'Navigation/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/initial-screen',
      routes: Navigate.routes,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
    );
  }
}
