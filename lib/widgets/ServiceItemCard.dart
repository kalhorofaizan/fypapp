import 'package:flutter/material.dart';

class ServicesItemCard extends StatefulWidget {
  @override
  _ServicesItemCardState createState() => _ServicesItemCardState();
}

class _ServicesItemCardState extends State<ServicesItemCard> {
  double elevation=1.0;
  @override
  Widget build(BuildContext context) {
    return  Expanded(child: Container(
      child: InkWell(
        child: Card(
            elevation: elevation,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            color: Colors.white,
            child:Padding(
              padding: EdgeInsets.all(10),
              child:  Column(
                children: [
                  Icon(Icons.healing,size: 50,color: Colors.blue,),
                  Text("Medical Care",style: TextStyle(
                      fontSize: 16
                  ),)
                ],
              ),
            )
        ),
      ),
    ));
  }
}
