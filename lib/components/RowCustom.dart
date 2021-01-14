import 'package:flutter/material.dart';

class RowCustom extends StatefulWidget {
  @override
  _RowCustomState createState() => _RowCustomState();
}

class _RowCustomState extends State<RowCustom> {
  final String descricao;
  final double valor;

  _RowCustomState({this.descricao, this.valor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(descricao ?? ''),
          Text(valor.toString() ?? ''),
        ],
      ),
    );
  }
}
