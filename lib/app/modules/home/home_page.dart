import 'package:controle_gastos/app/components/appBar_custom.dart';
import 'package:controle_gastos/app/components/bottom_navigator.dart';
import 'package:controle_gastos/app/modules/home/components/card_custom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(title: 'Home'),
      body: SafeArea(
        //Para contornar as areas não acessiveis do celular
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              CardCustom(
                text: 'Receitas',
                route: '/receitasPage',
              ),
              CardCustom(text: 'Despesas         Fixas'),
              CardCustom(text: 'Despesas Variaveis'),
              CardCustom(text: 'Lazer'),
              CardCustom(text: 'Outros'),
              CardCustom(text: 'Balanço          Mensal'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
