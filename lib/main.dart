import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Acredite em você mesmo e tudo será possível.",
    "O sucesso nasce do querer, da determinação e persistência em se chegar a um objetivo.",
    "O que você realiza depende do que você acredita ser possível.",
    "Só é derrotado quem desiste de lutar.",
    "A persistência realiza o impossível.",
    "A única limitação que você tem é aquela que você coloca em si mesmo.",
    "Não espere por circunstâncias ideais, elas nunca chegarão. Comece onde você está, faça o que puder, use o que você tem.",
    "A verdadeira motivação vem de realização, desenvolvimento pessoal, satisfação no trabalho e reconhecimento.",
    "A vida é 10% do que acontece conosco e 90% de como reagimos a isso.",
    "O sucesso é a soma de pequenos esforços repetidos dia após dia."
  ];

  var _fraseatual = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseatual = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Dia'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/logo.png")),
            Text(
              _fraseatual,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            MaterialButton(
                onPressed: _gerarFrase,
                color: Colors.green,
                child: Text(
                  "Nova Frase",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ))
          ],
        ),
      ),
    );
  }
}
