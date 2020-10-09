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
            padding: const EdgeInsets.all(10.0),
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
              color: Colors.teal[100],
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Salário Murilo Dia 01: ",
                            textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Salário Camila: ",
                            textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Salário Murilo Dia 15: ",
                            textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Extras (Escola e Turno): ",
                            textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Outros: ", textAlign: TextAlign.start),
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Entradas Mensais com Extras: ",
                            textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Entradas Mensais sem Extras: ",
                            textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Despesas Mensais: ",
                            textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Sobra Mensal com Extras: ",
                            textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Sobra Mensal sem Extras: ",
                            textAlign: TextAlign.start),
                      ),
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
