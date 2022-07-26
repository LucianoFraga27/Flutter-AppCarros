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
          TextFormField(
            style: TextStyle(
             fontSize: 20,
             color: Colors.blue
            ),
            decoration: InputDecoration(
              labelText: 'Login',
              labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.grey
              ),
              hintText: 'Digite o login',
              hintStyle: TextStyle(
                  fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(
            obscureText: true,
            style: TextStyle(
                fontSize: 20,
                color: Colors.blue
            ),
            decoration: InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey
              ),
              hintText: 'Digite senha',
              hintStyle: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 46,
            child: RaisedButton(
                onPressed: () {},
                color: Colors.blue,
                child: Text('Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22))),
          )
        ],
      ),
    );
  }
}
