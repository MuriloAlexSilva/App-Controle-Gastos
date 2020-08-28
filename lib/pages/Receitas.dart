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
          children: [],
        ),
      ),
    );
  }
}
