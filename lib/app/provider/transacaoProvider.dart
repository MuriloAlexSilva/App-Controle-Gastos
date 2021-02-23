import 'dart:math';

import 'package:controle_gastos/app/data/databaseTransacao.dart';
import 'package:controle_gastos/app/models/transacao.dart';
import 'package:flutter/material.dart';

class TransacaoProvider with ChangeNotifier {
  final Map<String, Transacao> _items = {...DATABASE_TRANSACAO};

  List<Transacao> get all {
    return [..._items.values];
  }

  Transacao byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Transacao transacao) {
    if (transacao == null) {
      return;
    }

    if (transacao.id != null &&
        transacao.id.trim().isNotEmpty &&
        _items.containsKey(transacao.id)) {
      _items.update(transacao.id, (_) => transacao);
    } else {
      //adicionar
      _items.putIfAbsent(
        transacao.id,
        () => Transacao(
          id: transacao.id,
          tipoTransacao: transacao.tipoTransacao,
          valor: transacao.valor,
        ),
      );
    }

    notifyListeners();
  }

  void remove(Transacao transacao) {
    if (transacao != null && transacao.id != null) {
      _items.remove(transacao.id);
      notifyListeners();
    }
  }
}
