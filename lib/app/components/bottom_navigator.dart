import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

Widget bottomNavigator({BuildContext context, int index}) {
  return ConvexAppBar(
    backgroundColor: Colors.indigo[400],
    color: Colors.white,
    height: 60,
    activeColor: Colors.white,
    style: TabStyle.reactCircle,
    items: [
      TabItem(
        icon: Icons.home,
        title: 'Home',
      ),
      TabItem(icon: Icons.account_balance, title: 'Receitas'),
      TabItem(icon: Icons.add, title: 'Add'),
      TabItem(icon: Icons.list),
      TabItem(icon: Icons.list),
    ],
    initialActiveIndex: 0,
    onTap: (index) {},
  );
}
