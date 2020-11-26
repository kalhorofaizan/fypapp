import 'package:flutter/material.dart';

class LoaderDialog {
  static show(BuildContext context, {String msg = "Please wait..."}) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Theme.of(context).primaryColor)),
                  SizedBox(width: 15),
                  Text(msg)
                ],
              ),
            ),
          );
        },
        barrierDismissible: false);
  }

  static dismiss(BuildContext context) {
    Navigator.pop(context);
  }
}
