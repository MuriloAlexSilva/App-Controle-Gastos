import 'package:controle_gastos/components/CustomBottomAppBar.dart';
import 'package:controle_gastos/components/CustomDrawer.dart';
import 'package:controle_gastos/components/CustomFloatingButton.dart';
import 'package:controle_gastos/pages/DespesasEssenciais/assets/PageModel.dart';
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
      body: PageView(
        children: [
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageModel(mes: "Janeiro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageModel(mes: "Fevereiro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageModel(mes: "Março")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageModel(mes: "Abril")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageModel(mes: "Maio")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageModel(mes: "Junho")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageModel(mes: "Julho")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageModel(mes: "Agosto")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageModel(mes: "Setembro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageModel(mes: "Outubro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageModel(mes: "Novembro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageModel(mes: "Dezembro")),
          ),
        ],
      ),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
