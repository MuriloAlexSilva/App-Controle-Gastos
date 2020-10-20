import 'package:controle_gastos/pages/DespesasVariaveis/assets/DespesasVariaveisModel.dart';
import 'package:controle_gastos/widgets/CustomBottomAppBar.dart';

import 'package:controle_gastos/widgets/CustomDrawer.dart';
import 'package:controle_gastos/widgets/CustomFloatingButton.dart';
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
      body: PageView(
        children: [
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasVariaveisModel(mesReceitaVariavel: "Janeiro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasVariaveisModel(mesReceitaVariavel: "Fevereiro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasVariaveisModel(mesReceitaVariavel: "Março")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasVariaveisModel(mesReceitaVariavel: "Abril")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasVariaveisModel(mesReceitaVariavel: "Maio")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasVariaveisModel(mesReceitaVariavel: "Junho")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasVariaveisModel(mesReceitaVariavel: "Julho")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasVariaveisModel(mesReceitaVariavel: "Agosto")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasVariaveisModel(mesReceitaVariavel: "Setembro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasVariaveisModel(mesReceitaVariavel: "Outubro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasVariaveisModel(mesReceitaVariavel: "Novembro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasVariaveisModel(mesReceitaVariavel: "Dezembro")),
          ),
        ],
      ),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
