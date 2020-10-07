import 'package:controle_gastos/controllers/app_controller.dart';
import 'package:controle_gastos/pages/DespesasAdicionais.dart';
import 'package:controle_gastos/pages/DespesasEssenciais.dart';
import 'package:controle_gastos/pages/DespesasExtraordinarias.dart';
import 'package:controle_gastos/pages/DespesasVariaveis.dart';
import 'package:controle_gastos/pages/HomePage.dart';
import 'package:controle_gastos/pages/Investimentos.dart';
import 'package:controle_gastos/pages/Receitas.dart';

import 'package:flutter/material.dart';

import 'pages/LoginPage.dart';

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
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light, //Para mudar o formato do tema
            primarySwatch: Colors.teal,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: "/home",
          routes: {
            "/": (context) => LoginPage(),
            "/home": (context) => HomePage(),
            "/receitas": (context) => Receitas(),
            "/despesasEssenciais": (context) => DespesasEssenciais(),
            "/despesasVariaveis": (context) => DespesasVariaveis(),
            "/despesasExtraordinarias": (context) => DespesasExtraordinarias(),
            "/despesasAdicionais": (context) => DespesasAdicionais(),
            "/investimentos": (context) => Investimentos(),
          },
        );
      },
    );
  }
}
