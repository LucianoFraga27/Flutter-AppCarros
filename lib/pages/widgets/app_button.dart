

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  String text;
  Function onPressed;

  AppButton(this.text, this.onPressed);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: RaisedButton(
          onPressed: () {
            return onPressed();
          },
          color: Colors.blue,
          child:
          Text(text, style: TextStyle(
              color: Colors.white,
              fontSize: 22))),
    );
  }
}
