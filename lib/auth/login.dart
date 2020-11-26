import 'package:flutter/material.dart';
import 'package:fypapp/controls/loaderdialoag.dart';
import 'package:fypapp/controls/notifyDialog.dart';
import 'package:fypapp/pages/homePage.dart';
import 'package:fypapp/utils/constants.dart';
import 'package:fypapp/utils/validations.dart';
import 'package:fypapp/utils/services.dart';

class Login extends StatefulWidget {
  final Function animateCard;

  Login({this.animateCard});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginKey = GlobalKey<FormState>();
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Form(
          key: _loginKey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Email"),
                  validator: (e) =>
                      validation.isValidEmail(e) ? null : "Not Valid Email",
                  onSaved: (e) => email = e,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Password"),
                  validator: (e) =>
                      e.isEmpty ? "Password Should not be Empty" : null,
                  onSaved: (e) => password = e,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () async {
                      if (_loginKey.currentState.validate()) {
                        _loginKey.currentState.save();
                        LoaderDialog.show(context);
                        Services.login(email, password).then((value) {
                          if (value['result'] == false) {
                            LoaderDialog.dismiss(context);
                            NotifyDialog.show(context, value['message']);
                          } else {
                            LoaderDialog.dismiss(context);
                            Constants.setSession(context, value['data'])
                                .then((value) {
                              Navigator.popAndPushNamed(
                                  context, HomePage.ROUTE);
                            }).catchError((onError) {
                              NotifyDialog.show(context, onError);
                            });
                          }
                        });
                      }
                    },
                    child: Text(
                      "Login",
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
                    "Don't Have An Account",
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
