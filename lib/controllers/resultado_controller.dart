import 'package:cara_ou_coroa/theme/appimages.dart';

class ResultadoController {
  final Map<String,String> _moeda = {
    "cara": AppImages.moedaCara,
    "coroa": AppImages.moedaCoroa
  };
  String retornarImagemLadoMoeda(String moeda) {
    return _moeda[moeda]!;
  }
}