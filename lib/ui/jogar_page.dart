import 'dart:math';

import 'package:cara_ou_coroa/ui/resultado_page.dart';
import 'package:flutter/material.dart';

class JogarPage extends StatefulWidget {
  const JogarPage({Key? key}) : super(key: key);

  @override
  State<JogarPage> createState() => _JogarPageState();
}

class _JogarPageState extends State<JogarPage> {
  void _exibirResultado() {
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt( itens.length );
    var resultado = itens[numero];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultadoPage(resultado),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/logo.png"),
          GestureDetector(
            onTap: _exibirResultado,
            child: Image.asset("images/botao_jogar.png"),
          )
        ],
      ),
    );
  }
}
