import 'package:flutter/material.dart';

import 'package:flutter_uberfrota/views/Login.dart';

void main() {
  runApp(const MaterialApp(
    title: "Uber - Frota",
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var navigation_service;
    return MaterialApp(
      // Defina suas outras configurações do MaterialApp aqui

      routes: {
        '/login': (context) => Login(),
        // Defina outras rotas do seu aplicativo aqui
      },
      navigatorKey: navigation_service.navigatorKey,
    );
  }
}
