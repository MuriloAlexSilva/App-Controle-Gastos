import 'package:controle_gastos/app/models/transacao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> createDatabase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'controleGastos.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE transacoes('
          'id INTEGER PRIMARY KEY, '
          'categoria TEXT, '
          'tipoTransacao TEXT, '
          'valor INTEGER, '
          'mes TEXT)');
    }, version: 1);
  });
}

//No Future abaixo seria <int>, pq ele irá buscar pelo "id"
Future<int> save(Transacao newTransacao) {
  return createDatabase().then(
    (db) {
      final Map<String, dynamic> transacaoMap = Map();
      transacaoMap['categoria'] = newTransacao.categoria;
      transacaoMap['tipoTransacao'] = newTransacao.tipoTransacao;
      transacaoMap['valor'] = newTransacao.valor;
      transacaoMap['mes'] = newTransacao.mes;
      return db.insert('transacoes', transacaoMap);
    },
  );
}

Future<List<Transacao>> findAll() {
  return createDatabase().then((db) {
    return db.query('transacoes').then((maps) {
      final List<Transacao> transacao = List();
      for (Map<String, dynamic> map in maps) {
        final Transacao newTransacao = Transacao(
          id: map['id'],
          categoria: map['categoria'],
          tipoTransacao: map['tipoTransacao'],
          valor: map['valor'],
          mes: map['mes'],
        );
        transacao.add(newTransacao);
      }
      return transacao;
    });
  });
}
