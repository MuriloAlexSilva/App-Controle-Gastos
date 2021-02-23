import 'package:controle_gastos/app/provider/transacaoProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final int number;
  final int number1;
  final int number2;
  final int number3;
  final int number4;

  const CardCustom(
      {Key key,
      this.number,
      this.number1,
      this.number2,
      this.number3,
      this.number4})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TransacaoProvider transacao = Provider.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Card(
            margin: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(transacao.all.elementAt(number1).tipoTransacao),
                      Text("R\$ ${transacao.all.elementAt(number1).valor}"),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/novaTransacao",
                              arguments: transacao);
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.orange,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
