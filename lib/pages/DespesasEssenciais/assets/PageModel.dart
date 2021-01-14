import 'package:controle_gastos/components/ColumnCustom.dart';
import 'package:flutter/material.dart';

class PageModel extends StatefulWidget {
  final String mes;
  final String titulo1;
  final String titulo2;
  final String titulo3;
  final String titulo4;
  final String titulo5;

  const PageModel(
      {Key key,
      this.mes,
      this.titulo1,
      this.titulo2,
      this.titulo3,
      this.titulo4,
      this.titulo5})
      : super(key: key);

  @override
  _PageModelState createState() => _PageModelState();
}

class _PageModelState extends State<PageModel> {
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
                widget.mes,
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
                  widget.titulo1,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ColumnCustom(
                  descricao1: "Apartamento Novo:",
                  valor1: 1000,
                  descricao2: "Apartamento:",
                  valor2: 1000,
                  descricao3: "Condominio",
                  valor3: 1000,
                  descricao4: "Luz",
                  valor4: 1000,
                  descricao5: "Internet",
                  valor5: 1000,
                  descricao6: "Gás",
                  valor6: 1000,
                  descricao7: "Celular",
                  valor7: 1000,
                ),
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
