import 'package:controle_gastos/app/components/CardCustom.dart';
import 'package:controle_gastos/app/components/CustomBottomAppBar.dart';
import 'package:controle_gastos/app/components/CustomDrawer.dart';
import 'package:controle_gastos/app/components/CustomFloatingButton.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Março", style: TextStyle(fontSize: 24)),
            ),
            CardCustom()
          ],
        ),
      ),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
