import 'package:controle_gastos/app/models/transacao.dart';
import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final Transacao transacaoItem;
  final String excluir;

  const CardCustom({Key key, this.transacaoItem, this.excluir})
      : super(key: key);

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
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(transacaoItem.categoria,
                      style: TextStyle(fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text("${transacaoItem.id.toString()} - "),
                            ),
                            Text(transacaoItem.tipoTransacao),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Text("R\$ ${transacaoItem.valor}"),
                        ),
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
