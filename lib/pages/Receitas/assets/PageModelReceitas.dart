import 'package:controle_gastos/widgets/RowCustom.dart';
import 'package:flutter/material.dart';

class PageModelReceitas extends StatelessWidget {
  final String mesReceita;

  const PageModelReceitas({Key key, this.mesReceita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Text(
                  mesReceita,
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          Center(
            child: Card(
              color: Colors.white70,
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Entradas",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RowCustom(
                          descricao: "Salário Murilo Dia 01:",
                          valor: "R\$1.000,00"),
                      RowCustom(
                          descricao: "Salário Camila:", valor: "R\$1.000,00"),
                      RowCustom(
                          descricao: "Salário Murilo Dia 15:",
                          valor: "R\$1.000,00"),
                      RowCustom(
                          descricao: "Extras (Escola e Turno):",
                          valor: "R\$1.000,00"),
                      RowCustom(descricao: "Outros:", valor: "R\$1.000,00"),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Card(
              color: Colors.white70,
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Fechamento Mensal",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RowCustom(
                          descricao: "Entradas Mensais sem Extras:",
                          valor: "R\$1.000,00"),
                      RowCustom(
                          descricao: "Entradas Mensais com Extras:",
                          valor: "R\$1.000,00"),
                      RowCustom(
                          descricao: "Despesas Mensais:", valor: "R\$1.000,00"),
                      RowCustom(
                          descricao: "Sobra Mensal sem Extras:",
                          valor: "R\$1.000,00"),
                      RowCustom(
                          descricao: "Sobra Mensal com Extras:",
                          valor: "R\$1.000,00"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
