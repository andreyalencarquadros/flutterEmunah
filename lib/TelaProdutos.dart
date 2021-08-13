import 'package:emunah_app/Produto1.dart';
import 'package:emunah_app/Produto2.dart';
import 'package:emunah_app/Produto3.dart';
import 'package:flutter/material.dart';

class TelaProdutos extends StatefulWidget {
  @override
  _TelaProdutosState createState() => _TelaProdutosState();
}

class _TelaProdutosState extends State<TelaProdutos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Nossos Produtos <3'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Divider(),
            Produto1(),
            Divider(),
            Produto2(),
            Divider(),
            Produto3(),
            Divider(),
          ],
        ),
      )
    );
  }
}
