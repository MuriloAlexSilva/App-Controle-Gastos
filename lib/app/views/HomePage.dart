import 'package:controle_gastos/app/components/CustomBottomAppBar.dart';
import 'package:controle_gastos/app/components/CustomDrawer.dart';
import 'package:controle_gastos/app/components/CustomFloatingButton.dart';
import 'package:controle_gastos/app/components/RowCustom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Balanço Mensal",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RowCustom(
              texto1: "Receitas",
              icone1: Icons.monetization_on,
              rotaCustomizada1: "/receitas",
              texto2: "Investimentos",
              icone2: Icons.business_center,
              rotaCustomizada2: "/investimentos",
            ),
            RowCustom(
              texto1: "Despesas Essenciais",
              icone1: Icons.add_shopping_cart,
              rotaCustomizada1: "/despesasEssenciais",
              texto2: "Despesas Variáveis",
              icone2: Icons.accessibility_new,
              rotaCustomizada2: "/despesasVariaveis",
            ),
            RowCustom(
              texto1: "Despesas Extras",
              icone1: Icons.android,
              rotaCustomizada1: "/despesasExtraordinarias",
              texto2: "Despesas Adicionais",
              icone2: Icons.card_travel,
              rotaCustomizada2: "/despesasAdicionais",
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(),
      //
    );
  }
}
