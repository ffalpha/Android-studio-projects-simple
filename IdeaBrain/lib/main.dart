import 'package:flutter/material.dart';
import 'package:you2auth/Onboradpages/onborading.dart';

import 'package:you2auth/Setup/welcome.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ideabrain',
      home: Onborad(),

      routes:<String,WidgetBuilder>{
      },
    );
  }
}

class Onborad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboardpage(),
    );
  }
}

