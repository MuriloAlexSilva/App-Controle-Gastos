import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Card(
            margin: EdgeInsets.all(12),
            child: Column(
              children: [
                Text("Receitas", style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Apartamento"),
                        Text("R\$ 70,00"),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
