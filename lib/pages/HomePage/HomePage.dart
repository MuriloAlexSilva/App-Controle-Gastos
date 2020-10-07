import 'package:controle_gastos/controllers/app_controller.dart';
import 'package:controle_gastos/widgets/CustomContainer.dart';
import 'package:controle_gastos/widgets/CustomDrawer.dart';
import 'package:controle_gastos/widgets/CustomFloatingButton.dart';
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
        actions: [CustomSwitch()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(title: "Receitas", rotaCustomizada: "/receitas"),
            CustomContainer(
                title: "Investimentos", rotaCustomizada: "/investimentos"),
            CustomContainer(
                title: "Despesas Essenciais",
                rotaCustomizada: "/despesasEssenciais"),
            CustomContainer(
                title: "Despesas Variáveis",
                rotaCustomizada: "/despesasVariaveis"),
            CustomContainer(
                title: "Despesas Extraordinárias",
                rotaCustomizada: "/despesasExtraordinarias"),
            CustomContainer(
                title: "Despesas Adicionais",
                rotaCustomizada: "/despesasAdicionais"),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingButton(),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        //Seria para trocar o tema no swtich
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
