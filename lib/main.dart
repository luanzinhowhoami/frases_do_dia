// Let's Go

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreenStfull(),
  ));
}

class HomeScreenStfull extends StatefulWidget {
  @override
  _HomeScreenStfullState createState() => _HomeScreenStfullState();
}

class _HomeScreenStfullState extends State<HomeScreenStfull> {
  var _frases = [
    "Falar é fácil, me mostre o código.",
    "Se a Microsoft faz aplicações para Linux que significa que eu ganhei.",
    "A Microsoft não é má. Eles só fazem sistemas operacionais realmente ruins.",
    "Software é como sexo: é melhor quando é de graça."
  ];

  var _fraseGerada = "Clique abaixo para gerar nova frase";

  void gerarFrase() {
    var numberSorted = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numberSorted];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/logo.png'),
                Text(_fraseGerada,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                RaisedButton(
                    color: Colors.greenAccent,
                    padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                    child: Text(
                      "Nova Frase",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                    onPressed: () {
                      gerarFrase();
                    })
              ],
            )),
      ),
    );
  }
}
