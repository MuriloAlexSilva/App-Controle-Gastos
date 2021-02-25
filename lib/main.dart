import 'package:controle_gastos/app/views/NovaTransacao.dart';
import 'package:flutter/material.dart';
import 'app/views/HomePage.dart';
import 'app/views/LoginPage.dart';
import 'app/views/ReceitasPage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lobster',
        brightness: Brightness.light, //Para mudar o formato do tema
        primarySwatch: Colors.teal,
        bottomAppBarColor: Colors.teal,
        buttonColor: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/receitas": (context) => ReceitasPage(),
        "/novaTransacao": (context) => NovaTransacao()
        // "/despesasEssenciais": (context) => DespesasEssenciais(),
        // "/despesasVariaveis": (context) => DespesasVariaveis(),
        // "/despesasExtraordinarias": (context) => DespesasExtraordinarias(),
        // "/despesasAdicionais": (context) => DespesasAdicionais(),
        // "/investimentos": (context) => Investimentos(),
      },
    );
  }
}
