import 'package:controle_gastos/widgets/RowCustom.dart';
import 'package:flutter/material.dart';

class PageModel extends StatelessWidget {
  final String mes;

  const PageModel({Key key, this.mes}) : super(key: key);

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
                mes,
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
                  "Habitação",
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
                        descricao: "Apartamento Novo:", valor: "R\$1.000,00"),
                    RowCustom(
                        descricao: "Prestação Apartamento:",
                        valor: "R\$1.000,00"),
                    RowCustom(descricao: "Condomínio:", valor: "R\$1.000,00"),
                    RowCustom(descricao: "Luz:", valor: "R\$1.000,00"),
                    RowCustom(descricao: "Internet:", valor: "R\$1.000,00"),
                    RowCustom(descricao: "Gás:", valor: "R\$1.000,00"),
                    RowCustom(descricao: "Celular:", valor: "R\$1.000,00"),
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
                  "Alimentação",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RowCustom(descricao: "Marmita:", valor: "R\$1.000,00"),
                    RowCustom(descricao: "Mercado:", valor: "R\$1.000,00"),
                    RowCustom(descricao: "Padaria:", valor: "R\$1.000,00"),
                    RowCustom(descricao: "Diversos:", valor: "R\$1.000,00"),
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
                  "Transporte",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RowCustom(descricao: "Posto:", valor: "R\$1.000,00"),
                    RowCustom(descricao: "Pedágio:", valor: "R\$1.000,00"),
                    RowCustom(descricao: "Manutenção:", valor: "R\$1.000,00"),
                    RowCustom(descricao: "Seguro:", valor: "R\$1.000,00"),
                    RowCustom(descricao: "Posto:", valor: "R\$1.000,00"),
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
                  "Impostos",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RowCustom(descricao: "IPTU:", valor: "R\$1.000,00"),
                    RowCustom(
                        descricao: "Documentações:", valor: "R\$1.000,00"),
                    RowCustom(descricao: "IPVA:", valor: "R\$1.000,00"),
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
                    RowCustom(descricao: "Academia:", valor: "R\$1.000,00"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
