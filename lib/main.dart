import 'package:controle_gastos/pages/BalancoMensal.dart';
import 'package:controle_gastos/pages/Receitas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black, //Colorir o AppBar
        accentColor: Colors.greenAccent,
        primaryIconTheme: IconThemeData(color: Colors.greenAccent),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.white, //Para colorir o icon
        ),
      ),
      home: BalancoMensal(),
      debugShowCheckedModeBanner: false,
    );
  }
}
