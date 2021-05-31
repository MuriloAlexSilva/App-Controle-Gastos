import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';

/*----Codigo padrão para utilização de banco de dados----*/

final String contactTable = 'contactTable';
final String idColumn = 'idColumn';
final String nameColumn = 'nameColumn';
final String emailColumn = 'emailColumn';
final String phoneColumn = 'phoneColumn';
final String imageColumn = 'imageColumn';

class ContactDatabase {
  static final ContactDatabase _instance = ContactDatabase.internal();
  factory ContactDatabase() => _instance;
  ContactDatabase.internal();

  Database _db;
  Future<Database> get db async {
    if (_db != null) {
      return _db;
    } else {
      _db = await initDb();
      return _db;
    }
  }

  Future<Database> initDb() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, "contacts.db"); //nome do arquivo

    return await openDatabase(path, version: 1,
        onCreate: (Database db, int newerVersion) async {
      await db.execute(
          "CREATE TABLE $contactTable($idColumn INTEGER PRIMARY KEY, $nameColumn TEXT, $emailColumn TEXT,"
          "$phoneColumn TEXT, $imageColumn TEXT)");
    });
  }

  //Salvar Contato
  Future<Contact> saveContact(Contact contact) async {
    Database dbContact = await db;
    contact.id = await dbContact.insert(contactTable, contact.toMap());
    return contact;
  }

  //Pegar um contato
  Future<Contact> getContact(int id) async {
    Database dbContact = await db;
    List<Map> maps = await dbContact.query(contactTable,
        columns: [idColumn, nameColumn, emailColumn, phoneColumn, imageColumn],
        where: "$idColumn = ?",
        whereArgs: [id]);
    if (maps.length > 0) {
      return Contact.fromMap(maps.first);
    } else {
      return null;
    }
  }

  //Deletar um contato
  Future<int> deleteContact(int id) async {
    Database dbContact = await db;
    return await dbContact.delete(
      contactTable,
      where: "$idColumn = ?",
      whereArgs: [id],
    );
  }

  //Atualizar um contato
  Future<int> updateContact(Contact contact) async {
    Database dbContact = await db;
    return await dbContact.update(
      contactTable,
      contact.toMap(),
      where: "$idColumn = ?",
      whereArgs: [contact.id],
    );
  }

  //Coletar todos itens da lista de Contatos
  getAllContacts() async {
    Database dbContact = await db;
    List listMap = await dbContact.rawQuery(
        "SELECT * FROM $contactTable"); //Estamos selecionando todos os maps da tabela (o * quer dizer todos)
    List<Contact> listContact = [];
    for (Map m in listMap) {
      listContact.add(Contact.fromMap(m));
    }
    return listContact;
  }

  //Contagem de elementos da tabela
  Future<int> getNumber() async {
    Database dbContact = await db;
    return Sqflite.firstIntValue(
      await dbContact.rawQuery("SELECT COUNT (*) FROM $contactTable"),
    );
  }

  //Fechar o banco de dados
  Future close() async {
    Database dbContact = await db;
    dbContact.close();
  }
}

class Contact {
  int id;
  String name;
  String email;
  String phone;
  String image;

  Contact();

  Contact.fromMap(Map map) {
    //Pega o mapa e monta o contato
    id = map[idColumn];
    name = map[nameColumn];
    email = map[emailColumn];
    phone = map[phoneColumn];
    image = map[imageColumn];
  }

  Map toMap() {
    //Transforma os dados do Contact em mapa
    Map<String, dynamic> map = {
      nameColumn: name,
      emailColumn: email,
      phoneColumn: phone,
      imageColumn: image
    };
    if (id != null) {
      map[idColumn] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Contact(id: $id, name: $name, email: $email, phone: $phone, image: $image)";
  }
}
