import 'package:controle_gastos/pages/DespesasAdicionais/assets/DespesasAdicionaisModel.dart';
import 'package:controle_gastos/widgets/CustomBottomAppBar.dart';
import 'package:controle_gastos/widgets/CustomContainer.dart';
import 'package:controle_gastos/widgets/CustomDrawer.dart';
import 'package:controle_gastos/widgets/CustomFloatingButton.dart';
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
      body: PageView(
        children: [
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    DespesasAdicionaisModel(mesReceitaAdicionais: "Janeiro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    DespesasAdicionaisModel(mesReceitaAdicionais: "Fevereiro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasAdicionaisModel(mesReceitaAdicionais: "Março")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasAdicionaisModel(mesReceitaAdicionais: "Abril")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasAdicionaisModel(mesReceitaAdicionais: "Maio")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasAdicionaisModel(mesReceitaAdicionais: "Junho")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasAdicionaisModel(mesReceitaAdicionais: "Julho")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasAdicionaisModel(mesReceitaAdicionais: "Agosto")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    DespesasAdicionaisModel(mesReceitaAdicionais: "Setembro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    DespesasAdicionaisModel(mesReceitaAdicionais: "Outubro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    DespesasAdicionaisModel(mesReceitaAdicionais: "Novembro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    DespesasAdicionaisModel(mesReceitaAdicionais: "Dezembro")),
          ),
        ],
      ),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
