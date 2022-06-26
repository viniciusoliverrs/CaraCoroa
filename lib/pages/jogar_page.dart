import 'package:cara_ou_coroa/core/approutes.dart';
import 'package:cara_ou_coroa/theme/appimages.dart';
import 'package:flutter/material.dart';

import '../controllers/jogar_controller.dart';
import '../theme/appcolors.dart';

class JogarPage extends StatefulWidget {
  const JogarPage({Key? key}) : super(key: key);

  @override
  State<JogarPage> createState() => _JogarPageState();
}

class _JogarPageState extends State<JogarPage> {
  final _jogaController = JogarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.logo,
              ),
              GestureDetector(
                onTap: () async {
                  var resultado = _jogaController.exibirResultado();
                  await Navigator.pushNamed(context, AppRoutes.resultadoPage,
                      arguments: resultado);
                },
                child: Image.asset(
                  AppImages.botaoJogar,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
