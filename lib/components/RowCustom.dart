import 'package:controle_gastos/models/transacao.dart';
import 'package:flutter/material.dart';

class RowCustom extends StatelessWidget {
  final Transacao transacao;

  const RowCustom({Key key, this.transacao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("descricao: ${transacao.descricao}"),
          Text("valor: ${transacao.valor}"),
        ],
      ),
    );
  }
}
