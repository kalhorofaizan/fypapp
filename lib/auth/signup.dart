import 'package:flutter/material.dart';
import 'package:fypapp/utils/constants.dart';
import 'package:fypapp/utils/validations.dart';
import 'package:fypapp/controls/loaderdialoag.dart';
import 'package:fypapp/controls/notifyDialog.dart';
import 'package:fypapp/utils/services.dart';
import 'package:fypapp/pages/homePage.dart';

class Signup extends StatefulWidget {
  final Function animateCard;

  Signup({this.animateCard});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formkey = GlobalKey<FormState>();
  String name;
  String number;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Form(
          key: _formkey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Signup",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Name",
                  ),
                  validator: (e) =>
                      e.isEmpty ? "name should not be empty" : null,
                  onSaved: (e) => name = e,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Number",
                  ),
                  validator: (e) => RegExp(r'(03|3)\d{9}').hasMatch(e)
                      ? null
                      : "format should be 03*********",
                  maxLength: 11,
                  keyboardType: TextInputType.number,
                  onSaved: (e) => number = e,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                  validator: (e) =>
                      validation.isValidEmail(e) ? null : "Not Valid Email",
                  onSaved: (e) => email = e,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  validator: (e) => e.length > 6
                      ? null
                      : "Password Should be more then 6 character",
                  onSaved: (e) => password = e,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      if (_formkey.currentState.validate()) {
                        _formkey.currentState.save();
                        LoaderDialog.show(context);
                        Services.register(
                                email, password, name, number, context)
                            .then((value) {
                          if (value['result'] == false) {
                            LoaderDialog.dismiss(context);
                            NotifyDialog.show(context, value['message']);
                          } else {
                            Constants.setSession(context, value['data'])
                                .then((value) {
                              LoaderDialog.dismiss(context);
                              Navigator.popAndPushNamed(
                                  context, HomePage.ROUTE);
                            }).catchError((onError) {
                              LoaderDialog.dismiss(context);
                              NotifyDialog.show(context, onError);
                            });
                          }
                        });
                      }
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    Text(
                      " Or ",
                    ),
                    Flexible(
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Text(
                    "Already Have An Account",
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: widget.animateCard,
                )
              ],
            ),
          )),
    );
  }
}
