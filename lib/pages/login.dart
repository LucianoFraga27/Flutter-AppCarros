import 'package:carros/pages/usuario.dart';
import 'package:carros/pages/widgets/app_button.dart';
import 'package:carros/pages/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../utilis/nav.dart';
import 'home_page.dart';
import 'login_api.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _tLogin = TextEditingController(text: "admin");

  final _tSenha = TextEditingController(text: "123");

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
            AppText('Login', 'Digite o login',
                controller: _tLogin,
                validator: _validateLogin,
                KeyboardType:TextInputType.text,
                textInputAction: TextInputAction.next,

              ),
            SizedBox(
              height: 10,
            ),
            AppText('Senha', 'Digite a senha',
                obscure: true, controller: _tSenha,
                validator: _validateSenha,
                KeyboardType:TextInputType.number,
                textInputAction: TextInputAction.done,
            ),
            SizedBox(
              height: 20,
            ),
            AppButton('Login', () {
              return _onClickLogin(context);
            })
          ],
        ),
      ),
    );
  }

  _onClickLogin(BuildContext context) async {
    if (!_formKey.currentState!.validate()) {
      return;
    } else {

      String login = _tLogin.text;
      String senha = _tSenha.text;

      print("Login: $login | Senha: $senha");

      Usuario user = await LoginApi.login(login,senha);

      if(user != null) {
        print(">>> $user");
        push(context, HomePage());
      } else{
        print('Login incorreto!');
      }

    }

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
    if (value.length > 3) {
      return 'A senha precisa ter pelo menos 3 caracteres';
    }
  }
}
