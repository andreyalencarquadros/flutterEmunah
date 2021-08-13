import 'dart:ui';
import 'package:emunah_app/TelaEmpresa.dart';
import 'package:emunah_app/TelaProdutos.dart';
import 'package:emunah_app/TelaReceitas.dart';
import 'package:emunah_app/chamaNoZap.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagens/bg.png"),
            alignment: Alignment.center,
            fit: BoxFit.fill

        ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      child: Image.asset("imagens/empresa.png", width: 160,),
                  onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
                  },),
                  GestureDetector(child: Image.asset("imagens/Produtos.png", width: 160,),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaProdutos()));
                  },)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(child: Image.asset("imagens/Receitas.png", width: 160,),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaReceitas()));
                  },),
                  GestureDetector(child: Image.asset("imagens/Contato.png", width: 160,),
                  onTap: () {
                    linkZap("https://wa.me/+5569993485858");
                  },)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
