import 'package:flutter/material.dart';
import 'package:fypapp/utils/constants.dart';

class HomePage extends StatefulWidget {
  static const String ROUTE = 'homePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SafeArea(
        child: Container(
          child: Text("Hi"),
        ),
      ),
    );
  }
}
