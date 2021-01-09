import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.2,
          color: Colors.blue,
        ),
      Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(height: 100,),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          SizedBox(height: 10,),
          Text("Faizan Ullah Kalhoro",style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),)
        ],
      ),
    )
      ],
    );
  }
}
