import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fypapp/utils/constants.dart';

class EditProfilePage extends StatefulWidget {

  static String  ROUTE = "editProfilePage";
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  void initState() {
    super.initState();
    Constants.getSession().then((value) {
      print(value.email);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      Container(
        child:Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.2,),
            Center(
              child:  Container(
                width: 120,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                    Positioned(child: IconButton(icon: Icon(Icons.edit,size: 30,), onPressed: (){}),bottom: -10,right: 0,),

                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Form(child: Column(children: [
                TextFormField(
                  controller: nameController ,
                  decoration: InputDecoration(
                  hintText: "Name"
                ),),
                SizedBox(height: 20,),
                TextFormField(
                  controller: emailController ,
                  decoration: InputDecoration(
                    hintText: "Email"
                ),),
                SizedBox(height: 20,),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Password"
                ),),
                SizedBox(height: 20,),
                Container(width: double.infinity,child: RaisedButton(onPressed: (){},child: Text("Save",style: TextStyle(
                  color: Colors.white
                ),),color: Colors.blue,))
              ],)),

            ),
          ],
        )
      ),
      );
  }
}
