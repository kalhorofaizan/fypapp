
import 'package:flutter/material.dart';
import 'package:fypapp/pages/AuthPage.dart';
import 'package:fypapp/pages/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "RobotMono"
      ),
      home: AuthPage(),
      routes: {
        HomePage.ROUTE:(context)=>HomePage(),
        AuthPage.ROUTE:(context)=>AuthPage(),
      },
    );
  }
}
