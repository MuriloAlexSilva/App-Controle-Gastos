import 'package:flutter/material.dart';

Widget columnCustom({String mes, PageController controller, int page}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  controller.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease);
                }),
            Text(
              mes,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                onPressed: () {
                  controller.animateToPage(page,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease);
                }),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
            child: ListTile(
          leading: Icon(Icons.person),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Expanded(child: Text('Salário:')), Text('R\$ 500.00')],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Expanded(child: Text('Extras:')), Text('R\$ 800.00')],
          ),
        )),
      ),
      Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: ListTile(
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(child: Text('Receita Mensal:')),
                        Text('R\$ 500.00')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(child: Text('Despesas Essenciais:')),
                        Text('R\$ 500.00')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(child: Text('Despesas Não Essenciais:')),
                        Text('R\$ 500.00')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(child: Text('Lazer / Outros:')),
                        Text('R\$ 500.00')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(child: Text('Sobra Mensal:')),
                        Text('R\$ 500.00')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    ],
  );
}
