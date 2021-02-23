import 'package:controle_gastos/app/components/CustomBottomAppBar.dart';
import 'package:controle_gastos/app/components/CustomDrawer.dart';

import 'package:flutter/material.dart';

class NovaTransacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Nova Transação",
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 12),
              child: IconButton(
                icon: Icon(Icons.save),
                onPressed: () {},
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              DropdownButton(
                onChanged: (value) {},
                items: [
                  DropdownMenuItem(
                    child: Text("teste 1"),
                  ),
                  DropdownMenuItem(
                    child: Text("teste 2"),
                  ),
                  DropdownMenuItem(
                    child: Text("teste 3"),
                  ),
                  DropdownMenuItem(
                    child: Text("teste 4"),
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Valor"),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
