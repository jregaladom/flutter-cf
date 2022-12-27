import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqliteapp/DataBase/DbTable.dart';

class DbConnection {
  String name = 'SampleApp';
  int version = 1;

  Future<Database> open() async {
    String path = join(await getDatabasesPath(), name);
    return openDatabase(
      path,
      version: version,
      onConfigure: onConfigure,
      onCreate: onCreate,
    );
  }

  onCreate(Database db, int version) {
    DBTable.tables.forEach((script) async => await db.execute(script));
  }

  onConfigure(Database db) async {
    await db.execute("PRAGMA foreign_keys = ON");
  }
}
