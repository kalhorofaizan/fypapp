import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotifyDialog {
  static show(BuildContext context, String msg,
      {String title, Function() onOk}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: title == null ? null : Text(title),
            content: Text(msg),
            actions: [
              FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.pop(context);
                  if (onOk != null) {
                    onOk();
                  }
                },
              )
            ],
          );
        },
        barrierDismissible: false);
  }
}
