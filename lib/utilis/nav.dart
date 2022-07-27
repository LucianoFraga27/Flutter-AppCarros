
import 'package:flutter/material.dart';

Future push (BuildContext context, Widget page) {
  return Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}

void pop (BuildContext context, String msg) {
  return Navigator.pop(context, msg);
}