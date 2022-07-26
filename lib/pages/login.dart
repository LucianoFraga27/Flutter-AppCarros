import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carros'),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          _text('Login', 'Digite o login'),
          SizedBox(
            height: 10,
          ),
          _text('Senha', 'Digite a senha', obscure: true),
          SizedBox(
            height: 20,
          ),
          _button('Login')
        ],
      ),
    );
  }

  Container _button(String text) {
    return Container(
      height: 46,
      child: RaisedButton(
          onPressed: () {},
          color: Colors.blue,
          child:
              Text(text, style: TextStyle(color: Colors.white, fontSize: 22))),
    );
  }

  TextFormField _text(String label, String hint, {bool obscure = false}) {
    return TextFormField(
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
