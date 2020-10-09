import 'package:controle_gastos/pages/Receitas/assets/PageModelReceitas.dart';
import 'package:controle_gastos/widgets/CustomContainer.dart';
import 'package:controle_gastos/widgets/CustomDrawer.dart';
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
          PageModelReceitas(mesReceita: "Janeiro"),
          PageModelReceitas(mesReceita: "Fevereiro"),
          PageModelReceitas(mesReceita: "Março"),
          PageModelReceitas(mesReceita: "Abril"),
          PageModelReceitas(mesReceita: "Maio"),
          PageModelReceitas(mesReceita: "Junho"),
          PageModelReceitas(mesReceita: "Julho"),
          PageModelReceitas(mesReceita: "Agosto"),
          PageModelReceitas(mesReceita: "Setembro"),
          PageModelReceitas(mesReceita: "Outubro"),
          PageModelReceitas(mesReceita: "Novembro"),
          PageModelReceitas(mesReceita: "Dezembro"),
        ],
      ),
    );
  }
}
