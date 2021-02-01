
import 'package:flutter/material.dart';

class ComplaintPage extends StatefulWidget {

  static final String ROUTE="ComplaintPage";

  @override
  _ComplaintPageState createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20,right: 10,left: 10),
        child: Column(
          children:[
            ListTile(leading:  IconButton(icon: Icon(Icons.arrow_back_sharp),onPressed: (){
              Navigator.pop(context);
            },),),
            Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Container(
                margin: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height*0.5,
                child: Column(
                  children: [
                    Center(
                      child: Text("XYZ Company Name",style: TextStyle(fontSize: 26),),
                    ),
                    Form(child: Column(children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Subject"
                        ),
                      ),
                      TextFormField(
                        minLines: 4,
                        maxLines: 20,
                        decoration: InputDecoration(
                          labelText: "description",
                        ),
                      ),
                      SizedBox(height: 30,),
                      RaisedButton(onPressed: (){},child: Text("Submit",style: TextStyle(
                          color: Colors.white
                      ),),color: Colors.blue,)
                    ],))
                  ],
                ),
              ),
            ),
          )],
        ),
      ),
    );
  }
}
