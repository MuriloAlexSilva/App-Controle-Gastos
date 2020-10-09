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
            color: Colors.teal[100],
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("Apartamento Novo: ",
                          textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("Prestação Apartamento: ",
                          textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("Condomínio: ", textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("Luz: ", textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("Internet: ", textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("Gás: ", textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("Celular: ", textAlign: TextAlign.start),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Card(
            color: Colors.teal[100],
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("Posto: ", textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("Pedágio: ", textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("Manutenção: ", textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("Seguro: ", textAlign: TextAlign.start),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Card(
            color: Colors.teal[100],
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("IPTU: ", textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child:
                          Text("Documentações: ", textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("IPVA: ", textAlign: TextAlign.start),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Card(
            color: Colors.teal[100],
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text("Academia: ", textAlign: TextAlign.start),
                    ),
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
