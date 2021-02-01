import 'package:flutter/material.dart';
import 'package:fypapp/pages/AuthPage.dart';
import 'package:fypapp/pages/CompanyInfo.dart';
import 'package:fypapp/pages/ComplaintList.dart';
import 'package:fypapp/pages/complaintPage.dart';
import 'package:fypapp/pages/editProfilePage.dart';
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
          fontFamily: "RobotMono"),
      home: HomePage(),
      routes: {
        HomePage.ROUTE: (context) => HomePage(),
        ComplaintPage.ROUTE: (context) => ComplaintPage(),
        AuthPage.ROUTE: (context) => AuthPage(),
        CompanyInfo.ROUTE:(context)=>CompanyInfo(),
        EditProfilePage.ROUTE:(context)=>EditProfilePage(),
        ComplaintListPage.ROUTE:(context)=>ComplaintListPage()
      },
    );
  }
}
