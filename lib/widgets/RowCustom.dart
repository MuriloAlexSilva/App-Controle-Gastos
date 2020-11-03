import 'package:flutter/material.dart';

class RowCustom extends StatelessWidget {
  final String descricao;
  final String valor;

  const RowCustom({Key key, this.descricao, this.valor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(descricao),
          Text(valor),
        ],
      ),
    );
  }
}
