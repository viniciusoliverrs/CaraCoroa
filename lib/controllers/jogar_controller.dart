import 'dart:math';

class JogarController {
  final List<String> _itens = ["cara", "coroa"];

  String exibirResultado() {
    var numero = Random().nextInt(_itens.length);
    var resultado = _itens[numero];
    return resultado;
  }
}
