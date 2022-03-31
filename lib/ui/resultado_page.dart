import 'package:flutter/material.dart';

class ResultadoPage extends StatefulWidget {
  String valor;
  String? caminhoImagem;
  ResultadoPage(this.valor, {Key? key}) : super(key: key);
  @override
  State<ResultadoPage> createState() => _ResultadoPageState();
}

class _ResultadoPageState extends State<ResultadoPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.valor == "cara") {
      widget.caminhoImagem = "images/moeda_cara.png";
    } else {
      widget.caminhoImagem = "images/moeda_coroa.png";
    }
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.caminhoImagem!),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset("images/botao_voltar.png"),
          )
        ],
      ),
    );
  }
}
