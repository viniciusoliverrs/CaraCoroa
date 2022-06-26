import 'package:cara_ou_coroa/pages/jogar_page.dart';
import 'package:flutter/material.dart';

import '../pages/resultado_page.dart';

class AppRoutes {
  static const String jogarPage = "/jogar";
  static const String resultadoPage = "/resultado";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case jogarPage:
        return MaterialPageRoute(builder: (context) => const JogarPage());
      case resultadoPage:
        return MaterialPageRoute(
          builder: (context) => ResultadoPage(args as String),
        );
      default:
        return MaterialPageRoute(builder: (context) => Container());
    }
  }
}
