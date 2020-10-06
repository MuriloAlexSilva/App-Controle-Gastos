import 'package:controle_gastos/controllers/app_controller.dart';
import 'package:controle_gastos/widgets/CustomContainer.dart';
import 'package:controle_gastos/widgets/CustomDrawer.dart';
import 'package:controle_gastos/widgets/CustomFloatingButton.dart';
import 'package:flutter/material.dart';

class BalancoMensal extends StatefulWidget {
  @override
  _BalancoMensalState createState() => _BalancoMensalState();
}

class _BalancoMensalState extends State<BalancoMensal> {
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
            CustomContainer(title: "Receitas"),
            CustomContainer(title: "Investimentos"),
            CustomContainer(title: "Despesas Essenciais"),
            CustomContainer(title: "Despesas Variáveis"),
            CustomContainer(title: "Despesas Extraordinárias"),
            CustomContainer(title: "Despesas Adicionais"),
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
