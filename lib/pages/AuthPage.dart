

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fypapp/auth/login.dart';
import 'dart:math';

import 'package:fypapp/auth/signup.dart';

class AuthPage extends StatefulWidget {
  static const  String ROUTE="AuthPage";

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with SingleTickerProviderStateMixin {

  Widget _showChild;
  int child=1;
  void animateCard(){
    if(child==1){
      setState(() {
        _showChild=Signup(animateCard: animateCard,);
        child=2;
      });
    } else{
      setState(() {
        _showChild=Login(animateCard: animateCard,);
        child=1;
      });
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _showChild= Login(animateCard: animateCard,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.blue,
        alignment: Alignment.center,
        child: Column(
          children: [
            Spacer(),
            Text("Complaint Management",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
            SizedBox(
              height: 40,
            ),
           Container(
             child:  AnimatedSwitcher(duration: Duration(seconds: 2),
               transitionBuilder: (Widget child,Animation<double> animation)=>SlideTransition(child: child,
                 position: child==1?Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
                     .animate(animation):Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                     .animate(animation),),
               child: _showChild,
             ),
           ),
            Spacer(),
          ],
        )
      ),
    );
  }
}
