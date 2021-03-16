import 'package:controle_gastos/app/components/CardCustom.dart';
import 'package:controle_gastos/app/components/CustomBottomAppBar.dart';
import 'package:controle_gastos/app/components/CustomDrawer.dart';
import 'package:controle_gastos/app/database/dao/transacao_dao.dart';

import 'package:controle_gastos/app/models/transacao.dart';

import 'package:flutter/material.dart';

class ReceitasPage extends StatefulWidget {
  @override
  _ReceitasPageState createState() => _ReceitasPageState();
}

class _ReceitasPageState extends State<ReceitasPage> {
  final TransacaoDao _dao = TransacaoDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Receitas",
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                        title: Text("Excluir Transação"),
                        content: Text("Tem certeza?"),
                        actions: [
                          FlatButton(
                            child: Text("Não"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            child: Text("Sim"),
                            onPressed: () {
                              Navigator.of(context).pushNamed("/deletePage");
                            },
                          ),
                        ],
                      ));
            },
            icon: Icon(
              Icons.delete_forever,
              color: Colors.red,
            ),
          ),
          IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.of(context).pushNamed("/updatePage");
              })
        ],
      ),
      body: FutureBuilder<List<Transacao>>(
        initialData: List(),
        future: Future.delayed(Duration(seconds: 1))
            .then((value) => _dao.findAll()),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              //Seria para quando você quiser inserir um botão para iniciar a ação ao clicar
              break;
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Loading"),
                    ),
                    CircularProgressIndicator(),
                  ],
                ),
              );
              break;
            case ConnectionState.active:
              /*Seria para quando temos um dado assincrono que queremos que seja devolvido a cada etapa concluida,
              ex. 10% devolve 10% e assim por diante -> Isso chama stream*/
              break;
            case ConnectionState.done:
              final List<Transacao> transacao = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final Transacao transacaoItem = transacao[index];
                  debugPrint(transacao.toString());
                  return CardCustom(transacaoItem: transacaoItem);
                },
                itemCount: transacao.length,
              );
              break;
          }
          return Text("Unknown error");
        },
      ),
      // floatingActionButton: CustomFloatingButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
