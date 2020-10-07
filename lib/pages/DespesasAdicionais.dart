import 'package:controle_gastos/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

class DespesasAdicionais extends StatefulWidget {
  @override
  _DespesasAdicionaisState createState() => _DespesasAdicionaisState();
}

class _DespesasAdicionaisState extends State<DespesasAdicionais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Despesas Adicionais",
        ),
        actions: [Icon(Icons.archive)],
      ),
    );
  }
}
