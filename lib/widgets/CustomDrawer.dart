import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          ListTile(
            title: Text("Balanço Mensal"),
            leading: Icon(Icons.account_balance),
          ),
          ListTile(
            title: Text("Receitas"),
            leading: Icon(Icons.monetization_on),
          ),
          ListTile(
            title: Text("Investimentos"),
            leading: Icon(Icons.business_center),
          ),
          ListTile(
            title: Text("Despesas Essenciais"),
            leading: Icon(Icons.add_shopping_cart),
          ),
          ListTile(
            title: Text("Despesas Variáveis"),
            leading: Icon(Icons.accessibility_new),
          ),
          ListTile(
            title: Text("Despesas Extraordinárias"),
            leading: Icon(Icons.android),
          ),
          ListTile(
            title: Text("Despesas Adicionais"),
            leading: Icon(Icons.card_travel),
          ),
        ],
      ),
    );
  }
}
