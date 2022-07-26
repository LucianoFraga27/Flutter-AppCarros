import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();

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
          _text('Login', 'Digite o login', controller: _tLogin),
          SizedBox(
            height: 10,
          ),
          _text('Senha', 'Digite a senha', obscure: true, controller: _tSenha),
          SizedBox(
            height: 20,
          ),
          _button('Login', _onClickLogin)
        ],
      ),
    );
  }

  TextFormField _text(String label, String hint,
      {bool obscure = false, required TextEditingController controller}) {
    return TextFormField(
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

  Container _button(String text, Function onPressed) {
    return Container(
      height: 46,
      child: RaisedButton(
          onPressed: () {
            return onPressed();
          },
          color: Colors.blue,
          child:
              Text(text, style: TextStyle(color: Colors.white, fontSize: 22))),
    );
  }

  _onClickLogin() {
    String login = _tLogin.text;
    String senha = _tSenha.text;
    print("Login: $login | Senha: $senha");
  }
}
