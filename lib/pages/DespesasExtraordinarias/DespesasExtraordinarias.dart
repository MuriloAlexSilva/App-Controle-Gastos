import 'package:controle_gastos/pages/DespesasExtraordinarias/assets/DespesasExtraordinariasModel.dart';

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
          "Despesas Extras",
        ),
        actions: [Icon(Icons.archive)],
      ),
      body: PageView(
        children: [
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasExtraordinariasModel(
                    mesReceitaExtraordinaria: "Janeiro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasExtraordinariasModel(
                    mesReceitaExtraordinaria: "Fevereiro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasExtraordinariasModel(
                    mesReceitaExtraordinaria: "Março")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasExtraordinariasModel(
                    mesReceitaExtraordinaria: "Abril")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasExtraordinariasModel(
                    mesReceitaExtraordinaria: "Maio")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasExtraordinariasModel(
                    mesReceitaExtraordinaria: "Junho")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasExtraordinariasModel(
                    mesReceitaExtraordinaria: "Julho")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasExtraordinariasModel(
                    mesReceitaExtraordinaria: "Agosto")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasExtraordinariasModel(
                    mesReceitaExtraordinaria: "Setembro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasExtraordinariasModel(
                    mesReceitaExtraordinaria: "Outubro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasExtraordinariasModel(
                    mesReceitaExtraordinaria: "Novembro")),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DespesasExtraordinariasModel(
                    mesReceitaExtraordinaria: "Dezembro")),
          ),
        ],
      ),
    );
  }
}
