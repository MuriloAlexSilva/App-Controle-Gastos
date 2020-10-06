import 'package:controle_gastos/controllers/app_controller.dart';
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
          home: BalancoMensal(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
