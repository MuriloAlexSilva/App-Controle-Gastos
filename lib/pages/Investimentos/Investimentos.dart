import 'package:controle_gastos/components/CustomDrawer.dart';

import 'package:flutter/material.dart';

class Investimentos extends StatefulWidget {
  @override
  _InvestimentosState createState() => _InvestimentosState();
}

class _InvestimentosState extends State<Investimentos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Investimentos",
        ),
        actions: [Icon(Icons.archive)],
      ),
    );
  }
}
