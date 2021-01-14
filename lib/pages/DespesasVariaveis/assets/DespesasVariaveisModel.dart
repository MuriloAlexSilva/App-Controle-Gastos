import 'package:flutter/material.dart';

class DespesasVariaveisModel extends StatelessWidget {
  final String mesReceitaVariavel;

  const DespesasVariaveisModel({Key key, this.mesReceitaVariavel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Icon(Icons.arrow_back),
          //       Text(
          //         mesReceitaVariavel,
          //         style: TextStyle(fontSize: 20),
          //       ),
          //       Icon(Icons.arrow_forward)
          //     ],
          //   ),
          // ),
          // Center(
          //   child: Card(
          //     color: Colors.white70,
          //     child: ListTile(
          //       title: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Text(
          //           "Habitação",
          //           textAlign: TextAlign.center,
          //           style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          //         ),
          //       ),
          //       subtitle: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             RowCustom(descricao: "Diarista", valor: "R\$ 100,00"),
          //             RowCustom(descricao: "Manutenção", valor: "R\$ 100,00"),
          //             RowCustom(descricao: "Melhorias", valor: "R\$ 100,00"),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Center(
          //   child: Card(
          //     color: Colors.white70,
          //     child: ListTile(
          //       title: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Text(
          //           "Gastos Camila",
          //           textAlign: TextAlign.center,
          //           style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          //         ),
          //       ),
          //       subtitle: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             RowCustom(descricao: "Cabelo", valor: "R\$ 100,00"),
          //             RowCustom(descricao: "Unha", valor: "R\$ 100,00"),
          //             RowCustom(
          //                 descricao: "Roupas e Acessórios",
          //                 valor: "R\$ 100,00"),
          //             RowCustom(
          //                 descricao: "Gastos Extras", valor: "R\$ 100,00"),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Center(
          //   child: Card(
          //     color: Colors.white70,
          //     child: ListTile(
          //       title: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Text(
          //           "Gastos Murilo",
          //           textAlign: TextAlign.center,
          //           style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          //         ),
          //       ),
          //       subtitle: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             RowCustom(descricao: "Cabelo", valor: "R\$ 100,00"),
          //             RowCustom(
          //                 descricao: "Roupas e Acessórios",
          //                 valor: "R\$ 100,00"),
          //             RowCustom(
          //                 descricao: "Gastos Extras", valor: "R\$ 100,00"),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Center(
          //   child: Card(
          //     color: Colors.white70,
          //     child: ListTile(
          //       title: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Text(
          //           "Gastos Muca",
          //           textAlign: TextAlign.center,
          //           style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          //         ),
          //       ),
          //       subtitle: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             RowCustom(descricao: "Pet", valor: "R\$ 100,00"),
          //             RowCustom(descricao: "Comida", valor: "R\$ 100,00"),
          //             RowCustom(
          //                 descricao: "Brinquedos e Acessórios",
          //                 valor: "R\$ 100,00"),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
