import 'package:controle_gastos/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

class DespesasEssenciais extends StatefulWidget {
  @override
  _DespesasEssenciaisState createState() => _DespesasEssenciaisState();
}

class _DespesasEssenciaisState extends State<DespesasEssenciais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Despesas Essenciais",
        ),
        actions: [Icon(Icons.archive)],
      ),
    );
  }
}
