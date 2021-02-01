import 'package:flutter/material.dart';

class ComplaintListPage extends StatefulWidget {
  static final String ROUTE="ComplaintListPage";
  @override
  _ComplaintListPageState createState() => _ComplaintListPageState();
}

class _ComplaintListPageState extends State<ComplaintListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Complaint List"),),
      body: Container(
        child: ListView(
          children: [
            ExpansionTile(
              leading: Container(width: 20,height: 20,decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue
              ),),
              title: Text("Company Name"),trailing: Text("2/2/2020"),children: [
             ListTile(title: Text("Subject",style: TextStyle(fontWeight: FontWeight.bold),),),
              ListTile(title: Text("sadjskalkkjdklsjakjsadaslkddsadlasdjsalskjdasjjdkjasdj"),)
            ],)],
        ),
      ),
    );
  }
}
