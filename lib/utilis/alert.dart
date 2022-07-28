import 'package:flutter/material.dart';

import 'nav.dart';

alert(BuildContext context, String msg) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Carros'),
          content: Text(msg),
          actions: [
            FlatButton(
                child: Text('Ok!'),
                onPressed: () {
                  pop(context, 'Ok!');
                }),
          ],
        );
      });
}