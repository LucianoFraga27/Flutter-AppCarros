import 'package:flutter/material.dart';

class AppText extends StatelessWidget {

  String label;
  String hint;
  bool obscure = false;
  TextEditingController controller;
  FormFieldValidator<String> validator;
  TextInputType KeyboardType;
  TextInputAction textInputAction;


  AppText(this.label, this.hint,{
    this.obscure = false,
    required this.controller,
    required  this.validator,
    required  this.KeyboardType,
    required this.textInputAction,
    });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: KeyboardType,
      textInputAction: textInputAction,
      validator: validator,
      controller: controller,
      obscureText: obscure,
      style: TextStyle(fontSize: 20, color: Colors.blue),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(fontSize: 20, color: Colors.grey),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
