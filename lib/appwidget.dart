import 'package:flutter/material.dart';

import 'core/approutes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/jogar",
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
