import 'package:flutter/material.dart';

import 'app/controllers/app_controller.dart';
import 'app/pages/HomePage.dart';
import 'app/pages/LoginPage.dart';
import 'app/pages/Receitas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'Lobster',
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light, //Para mudar o formato do tema
            primarySwatch: Colors.teal,
            bottomAppBarColor: AppController.instance.isDarkTheme
                ? Colors.grey[900]
                : Colors.teal,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: "/",
          routes: {
            "/": (context) => LoginPage(),
            "/home": (context) => HomePage(),
            "/receitas": (context) => Receitas(),
            // "/despesasEssenciais": (context) => DespesasEssenciais(),
            // "/despesasVariaveis": (context) => DespesasVariaveis(),
            // "/despesasExtraordinarias": (context) => DespesasExtraordinarias(),
            // "/despesasAdicionais": (context) => DespesasAdicionais(),
            // "/investimentos": (context) => Investimentos(),
          },
        );
      },
    );
  }
}

class DespesasEssenciais {}
