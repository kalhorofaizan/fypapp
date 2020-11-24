import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  final Function animateCard;

  const Signup({this.animateCard});
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Form(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text("Signup",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email"
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password"
                  ),
                ),
                SizedBox(height:20 ,),
                Container(
                  width: double.infinity,
                  child:  RaisedButton(onPressed: ()=>{},child: Text("Signup",style: TextStyle(
                      color: Colors.white,
                      fontSize: 17
                  ),),shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),color: Theme.of(context).primaryColor,),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Flexible(
                      child: Divider(thickness: 2,),
                    ),
                    Text(" Or ",),
                    Flexible(
                      child: Divider(thickness: 2,),
                    ),],
                ),
                SizedBox(height: 10,),
                InkWell(
                  child: Text("Don't Have An Account",style: TextStyle(
                      color: Colors.red
                  ),),
                  onTap: animateCard,
                )
              ],
            ),
          )
      ),
    );
  }
}
