import 'package:controle_gastos/app/database/app_database.dart';
import 'package:controle_gastos/app/models/transacao.dart';
import 'package:sqflite/sqflite.dart';

class TransacaoDao {
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY, '
      '$_categoria TEXT, '
      '$_tipoTransacao TEXT, '
      '$_valor INTEGER, '
      '$_mes TEXT)';
  static const String _tableName = 'transacoes';
  static const String _id = 'id';
  static const String _categoria = 'categoria';
  static const String _tipoTransacao = 'tipoTransacao';
  static const String _valor = 'valor';
  static const String _mes = 'mes';

  //No Future abaixo seria <int>, pq ele irá buscar pelo "id"
  Future<int> save(Transacao newTransacao) async {
    final Database db = await createDatabase();
    Map<String, dynamic> transacaoMap = _toMap(newTransacao);
    return db.insert(_tableName, transacaoMap);
  }

  Map<String, dynamic> _toMap(Transacao newTransacao) {
    final Map<String, dynamic> transacaoMap = Map();
    transacaoMap[_categoria] = newTransacao.categoria;
    transacaoMap[_tipoTransacao] = newTransacao.tipoTransacao;
    transacaoMap[_valor] = newTransacao.valor;
    transacaoMap[_mes] = newTransacao.mes;
    return transacaoMap;
  }

  Future<List<Transacao>> findAll() async {
    final Database db = await createDatabase();
    final List<Map<String, dynamic>> result = await db.query(_tableName);
    final List<Transacao> transacao = List();
    for (Map<String, dynamic> map in result) {
      final Transacao newTransacao = Transacao(
        id: map[_id],
        categoria: map[_categoria],
        tipoTransacao: map[_tipoTransacao],
        valor: map[_valor],
        mes: map[_mes],
      );
      transacao.add(newTransacao);
    }
    return transacao;
  }

  Future<int> delete(int id) async {
    final Database db = await createDatabase();
    return db.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> update(Transacao transacao) async {
    final Database db = await createDatabase();
    final Map<String, dynamic> contactMap = _toMap(transacao);
    return db.update(_tableName, contactMap,
        where: 'id = ?', whereArgs: [transacao.id]);
  }
}
