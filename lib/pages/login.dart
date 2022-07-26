import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _tLogin = TextEditingController(text: 'usuario');
  final _tSenha = TextEditingController(text: '123');
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carros'),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            _text('Login', 'Digite o login',
                controller: _tLogin, validator: _validateLogin),
            SizedBox(
              height: 10,
            ),
            _text('Senha', 'Digite a senha',
                obscure: true, controller: _tSenha, validator: _validateSenha),
            SizedBox(
              height: 20,
            ),
            _button('Login', () {
              return _onClickLogin(context);
            })
          ],
        ),
      ),
    );
  }

  TextFormField _text(
    String label,
    String hint, {
    bool obscure = false,
    required TextEditingController controller,
    required FormFieldValidator<String> validator,
  }) {
    return TextFormField(
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

  _onClickLogin(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    String login = _tLogin.text;
    String senha = _tSenha.text;
    print("Login: $login | Senha: $senha");
  }

  String? _validateLogin(String? value) {
    if (value == null || value.isEmpty) {
      return 'Digite o login';
    }
    return null;
  }

  String? _validateSenha(String? value) {
    if (value == null || value.isEmpty) {
      return 'Digite a senha';
    }
    if (value.length < 3) {
      return 'A senha precisa ter pelo menos 3 caracteres';
    }
  }
}
