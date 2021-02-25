import 'package:controle_gastos/app/components/CustomBottomAppBar.dart';
import 'package:controle_gastos/app/components/CustomDrawer.dart';
import 'package:controle_gastos/app/models/transacao.dart';

import 'package:flutter/material.dart';

class NovaTransacao extends StatelessWidget {
  TextEditingController _controllerCategoria = TextEditingController();
  TextEditingController _controllerTipoTransacao = TextEditingController();
  TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Nova Transação",
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 12),
              child: IconButton(
                icon: Icon(Icons.save),
                onPressed: () {},
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              TextField(
                controller: _controllerCategoria,
                decoration: InputDecoration(labelText: "Categoria"),
              ),
              TextField(
                controller: _controllerTipoTransacao,
                decoration: InputDecoration(labelText: "Tipo de Transação"),
              ),
              TextField(
                controller: _controllerValor,
                decoration: InputDecoration(labelText: "Valor"),
              ),
              RaisedButton(
                child: Text("Salvar"),
                onPressed: () {
                  final String categoria = _controllerCategoria.text;
                  final String tipoTransacao = _controllerTipoTransacao.text;
                  final double valor = double.tryParse(_controllerValor.text);
                  final Transacao newTransacao = Transacao(
                      categoria: categoria,
                      tipoTransacao: tipoTransacao,
                      valor: valor);
                  print(newTransacao);
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
