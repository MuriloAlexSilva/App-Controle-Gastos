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
            title: Text("Home Page"),
            leading: Icon(Icons.account_balance),
            onTap: () {
              Navigator.of(context).pushNamed("/home");
            },
          ),
          ListTile(
            title: Text("Receitas"),
            leading: Icon(Icons.monetization_on),
            onTap: () {
              Navigator.of(context).pushNamed("/receitas");
            },
          ),
          ListTile(
              title: Text("Investimentos"),
              leading: Icon(Icons.business_center),
              onTap: () {
                Navigator.of(context).pushNamed("/investimentos");
              }),
          ListTile(
              title: Text("Despesas Essenciais"),
              leading: Icon(Icons.add_shopping_cart),
              onTap: () {
                Navigator.of(context).pushNamed("/despesasEssenciais");
              }),
          ListTile(
              title: Text("Despesas Variáveis"),
              leading: Icon(Icons.accessibility_new),
              onTap: () {
                Navigator.of(context).pushNamed("/despesasVariaveis");
              }),
          ListTile(
            title: Text("Despesas Extras"),
            onTap: () {
              Navigator.of(context).pushNamed("/despesasExtraordinarias");
            },
            leading: Icon(Icons.android),
          ),
          ListTile(
              title: Text("Despesas Adicionais"),
              leading: Icon(Icons.card_travel),
              onTap: () {
                Navigator.of(context).pushNamed("/despesasAdicionais");
              }),
        ],
      ),
    );
  }
}
