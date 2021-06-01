import 'package:controle_gastos/app/components/appBar_custom.dart';
import 'package:controle_gastos/app/components/bottom_navigator.dart';
import 'package:controle_gastos/app/modules/receitas/components/column_custom.dart';
import 'package:flutter/material.dart';

class ReceitasPage extends StatefulWidget {
  @override
  _ReceitasPageState createState() => _ReceitasPageState();
}

class _ReceitasPageState extends State<ReceitasPage> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(title: 'Receitas'),
      backgroundColor: Colors.indigo[100],
      bottomNavigationBar: BottomNavigator(),
      body: PageView(
        //Trava a rolagem manual da tela, deixando possivel somente pelo botão
        physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal, //rolagem lateral da tela
        controller: controller,
        children: [
          columnCustom(mes: 'Janeiro', page: 1, controller: controller),
          columnCustom(mes: 'Fevereiro', page: 2, controller: controller),
          columnCustom(mes: 'Março', page: 3, controller: controller),
          columnCustom(mes: 'Abril', page: 4, controller: controller),
          columnCustom(mes: 'Maio', page: 5, controller: controller),
          columnCustom(mes: 'Junho', page: 6, controller: controller),
          columnCustom(mes: 'Julho', page: 7, controller: controller),
          columnCustom(mes: 'Agosto', page: 8, controller: controller),
          columnCustom(mes: 'Setembro', page: 9, controller: controller),
          columnCustom(mes: 'Outubro', page: 10, controller: controller),
          columnCustom(mes: 'Novembro', page: 11, controller: controller),
          columnCustom(mes: 'Dezembro', page: 12, controller: controller),
        ],
      ),
    );
  }
}
