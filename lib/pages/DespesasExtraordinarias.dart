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
    );
  }
}
