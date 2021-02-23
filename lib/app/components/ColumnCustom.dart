import 'package:controle_gastos/app/models/transacao.dart';
import 'package:flutter/material.dart';

class ColumnCustom extends StatefulWidget {
  @override
  _ColumnCustomState createState() => _ColumnCustomState();
}

class _ColumnCustomState extends State<ColumnCustom> {
  final Transacao transacao;

  _ColumnCustomState({this.transacao});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("descricao: ${transacao.descricao}"),
            Text("valor: ${transacao.valor}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("descricao: ${transacao.descricao}"),
            Text("valor: ${transacao.valor}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("descricao: ${transacao.descricao}"),
            Text("valor: ${transacao.valor}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("descricao: ${transacao.descricao}"),
            Text("valor: ${transacao.valor}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("descricao: ${transacao.descricao}"),
            Text("valor: ${transacao.valor}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("descricao: ${transacao.descricao}"),
            Text("valor: ${transacao.valor}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("descricao: ${transacao.descricao}"),
            Text("valor: ${transacao.valor}")
          ],
        ),
      ],
    );
  }
}
