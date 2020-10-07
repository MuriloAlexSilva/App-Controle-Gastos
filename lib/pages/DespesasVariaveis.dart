import 'package:controle_gastos/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

class DespesasVariaveis extends StatefulWidget {
  @override
  _DespesasVariaveisState createState() => _DespesasVariaveisState();
}

class _DespesasVariaveisState extends State<DespesasVariaveis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Despesas Variáveis",
        ),
        actions: [Icon(Icons.archive)],
      ),
    );
  }
}
