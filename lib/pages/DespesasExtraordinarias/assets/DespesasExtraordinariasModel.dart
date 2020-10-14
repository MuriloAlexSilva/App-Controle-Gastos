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
                        child: Text("Médico: ", textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Vacinas: ", textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Farmácia: ", textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child:
                            Text("veterinário: ", textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Vacinas e Medicamentos Muca: ",
                            textAlign: TextAlign.start),
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Carro: ", textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Casa: ", textAlign: TextAlign.start),
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child:
                            Text("Cursos Camila: ", textAlign: TextAlign.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child:
                            Text("Cursos Murilo: ", textAlign: TextAlign.start),
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
