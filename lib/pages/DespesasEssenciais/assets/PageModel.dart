import 'package:controle_gastos/components/ColumnCustom.dart';
import 'package:controle_gastos/models/transacao.dart';
import 'package:flutter/material.dart';

class PageModel extends StatefulWidget {
  @override
  _PageModelState createState() => _PageModelState();
}

class _PageModelState extends State<PageModel> {
  final String topico;
  final Transacao transacao;

  _PageModelState({this.topico, this.transacao});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back),
              Text(
                "mes: ${transacao.mes}",
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
                  topico,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ColumnCustom(),
              ),
            ),
          ),
        ),
        // Center(
        //   child: Card(
        //     color: Colors.white70,
        //     child: ListTile(
        //       title: Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           widget.titulo2,
        //           textAlign: TextAlign.center,
        //           style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        //         ),
        //       ),
        //       subtitle: Padding(
        //         padding: const EdgeInsets.only(bottom: 6.0),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             RowCustom(descricao: "Marmita:", valor: "R\$1.000,00"),
        //             RowCustom(descricao: "Mercado:", valor: "R\$1.000,00"),
        //             RowCustom(descricao: "Padaria:", valor: "R\$1.000,00"),
        //             RowCustom(descricao: "Diversos:", valor: "R\$1.000,00"),
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
        //           widget.titulo3,
        //           textAlign: TextAlign.center,
        //           style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        //         ),
        //       ),
        //       subtitle: Padding(
        //         padding: const EdgeInsets.only(bottom: 6.0),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             RowCustom(descricao: "Posto:", valor: "R\$1.000,00"),
        //             RowCustom(descricao: "Pedágio:", valor: "R\$1.000,00"),
        //             RowCustom(descricao: "Manutenção:", valor: "R\$1.000,00"),
        //             RowCustom(descricao: "Seguro:", valor: "R\$1.000,00"),
        //             RowCustom(descricao: "Posto:", valor: "R\$1.000,00"),
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
        //           widget.titulo4,
        //           textAlign: TextAlign.center,
        //           style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        //         ),
        //       ),
        //       subtitle: Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             RowCustom(descricao: "IPTU:", valor: "R\$1.000,00"),
        //             RowCustom(
        //                 descricao: "Documentações:", valor: "R\$1.000,00"),
        //             RowCustom(descricao: "IPVA:", valor: "R\$1.000,00"),
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
        //           widget.titulo5,
        //           textAlign: TextAlign.center,
        //           style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        //         ),
        //       ),
        //       subtitle: Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             RowCustom(descricao: "Academia:", valor: "R\$1.000,00"),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
