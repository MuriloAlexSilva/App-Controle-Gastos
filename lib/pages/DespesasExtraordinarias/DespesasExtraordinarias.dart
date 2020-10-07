import 'package:controle_gastos/widgets/CustomContainer.dart';
import 'package:controle_gastos/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

class DespesasExtraordinarias extends StatefulWidget {
  @override
  _DespesasExtraordinariasState createState() =>
      _DespesasExtraordinariasState();
}

class _DespesasExtraordinariasState extends State<DespesasExtraordinarias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Despesas Extraordinárias",
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
