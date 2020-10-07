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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(title: "Salário Murio Dia 1: "),
            CustomContainer(title: "Salário Camila: "),
            CustomContainer(title: "Salário Murio Dia 15: "),
            CustomContainer(title: "Extras (Escola e Turno) : "),
            CustomContainer(title: "Outros: "),
          ],
        ),
      ),
    );
  }
}
