import 'package:controle_gastos/app/modules/home/home_page.dart';
import 'package:controle_gastos/app/modules/receitas/receitas_page.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      backgroundColor: Colors.indigo[400],
      color: Colors.white,
      height: 60,
      activeColor: Colors.white,
      style: TabStyle.reactCircle,
      items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.account_balance, title: 'Receitas'),
        TabItem(icon: Icons.add, title: 'Add'),
        TabItem(icon: Icons.list),
        TabItem(icon: Icons.list),
      ],
      onTap: (index) {},
    );
  }
}
