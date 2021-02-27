import 'package:controle_gastos/app/components/CustomBottomAppBar.dart';
import 'package:controle_gastos/app/components/CustomDrawer.dart';
import 'package:controle_gastos/app/database/dao/transacao_dao.dart';
import 'package:controle_gastos/app/models/transacao.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NovaTransacao extends StatefulWidget {
  @override
  _NovaTransacaoState createState() => _NovaTransacaoState();
}

class _NovaTransacaoState extends State<NovaTransacao> {
  final TextEditingController _controllerCategoria = TextEditingController();

  final TextEditingController _controllerTipoTransacao =
      TextEditingController();

  final TextEditingController _controllerValor = TextEditingController();
  final TransacaoDao _dao = TransacaoDao();

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
                onPressed: () {
                  final String categoria = _controllerCategoria.text;
                  final String tipoTransacao = _controllerTipoTransacao.text;
                  final int valor = int.tryParse(_controllerValor.text);
                  final Transacao newTransacao = Transacao(
                      categoria: categoria,
                      tipoTransacao: tipoTransacao,
                      valor: valor);
                  _dao
                      .save(newTransacao)
                      .then((id) => Navigator.pop(context, newTransacao));
                },
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
                keyboardType: TextInputType.text,
              ),
              TextField(
                controller: _controllerTipoTransacao,
                decoration: InputDecoration(labelText: "Tipo de Transação"),
                keyboardType: TextInputType.text,
              ),
              TextField(
                controller: _controllerValor,
                decoration: InputDecoration(labelText: "Valor"),
                keyboardType: TextInputType.number,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text(
                      "Salvar",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      final String categoria = _controllerCategoria.text;
                      final String tipoTransacao =
                          _controllerTipoTransacao.text;
                      final int valor = int.tryParse(_controllerValor.text);
                      final Transacao newTransacao = Transacao(
                          categoria: categoria,
                          tipoTransacao: tipoTransacao,
                          valor: valor);
                      _dao
                          .save(newTransacao)
                          .then((id) => Navigator.pop(context, newTransacao));
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
