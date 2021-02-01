import 'package:flutter/material.dart';
import 'package:fypapp/pages/ComplaintList.dart';
import 'package:fypapp/pages/editProfilePage.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {



  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: height*0.2,
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
          ),),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Card(
                child: Container(
                  width: width*0.30,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("56", style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                      )),
                      Text("Resolved", style: TextStyle(
                          fontSize: 16  ,
                          color: Colors.white
                      )),
                    ],
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blueAccent, Colors.lightBlueAccent,],
                      begin: FractionalOffset(0.0,0.9),
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: width*0.30,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("56", style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                      )),
                      Text("Pending", style: TextStyle(
                          fontSize: 16  ,
                          color: Colors.white
                      )),
                    ],
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [ Colors.amber,Colors.amberAccent,],
                      begin: FractionalOffset(0.0,0.5),
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: width*0.30,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("56", style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                      )),
                      Text("Reject", style: TextStyle(
                          fontSize: 16  ,
                          color: Colors.white
                      )),
                    ],
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [ Colors.red,Colors.redAccent,],
                      begin: FractionalOffset(0.0,0.9),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text("Complaint List"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){Navigator.pushNamed(context, ComplaintListPage.ROUTE);},
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Edit Profile"),
            onTap: (){Navigator.pushNamed(context, EditProfilePage.ROUTE);},
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Spacer(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
          ),
          SizedBox(height: 10,)
        ],

      ),
    ),

      ],
    );
  }
}
