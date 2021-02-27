import 'package:controle_gastos/app/database/dao/transacao_dao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> createDatabase() async {
  final String path = join(await getDatabasesPath(), 'controleGastos.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(TransacaoDao.tableSql);
    },
    version: 1,
    /* onDowngrade: onDatabaseDowngradeDelete,- 
      Para limpar os dados quando realizar o downgrade*/
  );
}
