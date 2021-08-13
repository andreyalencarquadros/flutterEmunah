import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre a Emunah'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Text(
          "   Criamos esta marca com o intuito de divulgar algumas doçuras… e começaremos divulgando nossos produtos em uma das datas mais esperadas do ano: a PÁSCOA. Escolhemos Emunah, pelo que a palavra representa, ela é uma transliteração do hebraico, que significa: Fidelidade, Firmeza, Constância, Lealdade, Honestidade, Agir de tal maneira que inspire confiança e principalmente Esperança."
          " Queremos levar para todos os nossos clientes uma palavra de conforto em meio a está pandemia que estamos vivendo, e melhor ainda, poder adoçar um pouquinho a vida de cada um que adquirir nossos ovos de Páscoa de colher.",
          style: TextStyle(
              fontSize: 20,
          ),
            textAlign: TextAlign.justify,

          ),

            ],
          ),
        ),
      ),
    );
  }
}
