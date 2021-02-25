import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void createDatabase() {
  getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'controleGastos.db');
    openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE transacoes('
          'id INTEGER PRIMARY KEY, '
          'categoria TEXT, '
          'tipoTransacao TEXT, '
          'valor INTEGER, '
          'mes TEXT)');
    }, version: 1);
  });
}
