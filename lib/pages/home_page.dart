import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carros - HomePage'),
      ),
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: Text(
        'Luciano',
        style: TextStyle(
          fontSize: 22
        ),
      ),
    );
  }
}
