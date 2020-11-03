import 'package:controle_gastos/widgets/RowCustom.dart';
import 'package:flutter/material.dart';

class DespesasExtraordinariasModel extends StatelessWidget {
  final String mesReceitaExtraordinaria;

  const DespesasExtraordinariasModel({Key key, this.mesReceitaExtraordinaria})
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
                  mesReceitaExtraordinaria,
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
                    "Saúde",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RowCustom(descricao: "Médico", valor: "R\$ 100,00"),
                      RowCustom(descricao: "VAcinas", valor: "R\$ 100,00"),
                      RowCustom(descricao: "Farmácia", valor: "R\$ 100,00"),
                      RowCustom(descricao: "Veterinário", valor: "R\$ 100,00"),
                      RowCustom(
                          descricao: "Vacinas e Medicamentos Muca",
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
                    "Manutenção e Prevenção",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RowCustom(descricao: "Carro", valor: "R\$ 100,00"),
                      RowCustom(descricao: "Casa", valor: "R\$ 100,00"),
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
                    "Educação",
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
                          descricao: "Cursos Camila", valor: "R\$ 100,00"),
                      RowCustom(
                          descricao: "Cursos Murilo", valor: "R\$ 100,00"),
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
