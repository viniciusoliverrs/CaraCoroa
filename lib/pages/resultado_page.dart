import 'package:flutter/material.dart';
import '../theme/appimages.dart';
import '../controllers/resultado_controller.dart';
import '../theme/appcolors.dart';

class ResultadoPage extends StatefulWidget {
  final String _valor;
  const ResultadoPage(this._valor, {Key? key}) : super(key: key);
  @override
  State<ResultadoPage> createState() => _ResultadoPageState();
}

class _ResultadoPageState extends State<ResultadoPage> {
  final _resultadoController = ResultadoController();
  String? _ladoMoeda;
  @override
  void initState() {
    super.initState();
    _ladoMoeda = _resultadoController.retornarImagemLadoMoeda(widget._valor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(_ladoMoeda!),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset(AppImages.botaoVoltar),
              )
            ],
          ),
        ],
      ),
    );
  }
}
