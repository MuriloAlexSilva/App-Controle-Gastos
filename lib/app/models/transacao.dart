import 'package:flutter/cupertino.dart';

class Transacao extends ChangeNotifier {
  final String id;
  final String categoria;
  final String tipoTransacao;
  final double valor;
  final String mes;

  Transacao(
      {this.id, this.categoria, this.tipoTransacao, this.valor, this.mes});
}
