import 'package:controle_gastos/widgets/RowCustom.dart';
import 'package:flutter/material.dart';

class DespesasAdicionaisModel extends StatelessWidget {
  final String mesReceitaAdicionais;

  const DespesasAdicionaisModel({Key key, this.mesReceitaAdicionais})
      : super(key: key);

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
                  mesReceitaAdicionais,
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
                    "Lazer",
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
                          descricao: "Viagens Internacionais",
                          valor: "R\$ 100,00"),
                      RowCustom(
                          descricao: "Viagens Nacionais", valor: "R\$ 100,00"),
                      RowCustom(
                          descricao: "Restaurantes e bares",
                          valor: "R\$ 100,00"),
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
                    "Outros",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RowCustom(descricao: "Presentes", valor: "R\$ 100,00"),
                      RowCustom(descricao: "Diversos", valor: "R\$ 100,00"),
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
