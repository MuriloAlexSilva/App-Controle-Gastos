import 'package:controle_gastos/components/CustomBottomAppBar.dart';
import 'package:controle_gastos/components/CustomDrawer.dart';
import 'package:controle_gastos/components/CustomFloatingButton.dart';

import 'package:flutter/material.dart';

class Receitas extends StatefulWidget {
  @override
  _ReceitasState createState() => _ReceitasState();
}

class _ReceitasState extends State<Receitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Receitas",
        ),
        actions: [Icon(Icons.archive)],
      ),
      body: PageView(
        children: [
          // PageModelReceitas(mesReceita: "Janeiro"),
          // PageModelReceitas(mesReceita: "Fevereiro"),
          // PageModelReceitas(mesReceita: "Março"),
          // PageModelReceitas(mesReceita: "Abril"),
          // PageModelReceitas(mesReceita: "Maio"),
          // PageModelReceitas(mesReceita: "Junho"),
          // PageModelReceitas(mesReceita: "Julho"),
          // PageModelReceitas(mesReceita: "Agosto"),
          // PageModelReceitas(mesReceita: "Setembro"),
          // PageModelReceitas(mesReceita: "Outubro"),
          // PageModelReceitas(mesReceita: "Novembro"),
          // PageModelReceitas(mesReceita: "Dezembro"),
        ],
      ),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
