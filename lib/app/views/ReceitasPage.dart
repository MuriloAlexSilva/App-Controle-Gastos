import 'package:controle_gastos/app/components/CardCustom.dart';
import 'package:controle_gastos/app/components/CustomBottomAppBar.dart';
import 'package:controle_gastos/app/components/CustomDrawer.dart';
import 'package:controle_gastos/app/components/CustomFloatingButton.dart';
import 'package:controle_gastos/app/models/transacao.dart';
import 'package:flutter/material.dart';

class ReceitasPage extends StatefulWidget {
  @override
  _ReceitasPageState createState() => _ReceitasPageState();
}

class _ReceitasPageState extends State<ReceitasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Receitas",
        ),
      ),
      body: PageView(
        children: [
          CardCustom(
            transacao: Transacao(tipoTransacao: "Apartamento", valor: "20"),
          )
        ],
      ),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
