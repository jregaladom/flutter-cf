import 'package:sqflite/sqflite.dart';
import 'package:sqliteapp/DataBase/DbConnection.dart';

abstract class CRUD {
  final String table;
  const CRUD(this.table);

  Future<Database> get database async {
    return await DbConnection().open();
  }

  query(String sql, {List<dynamic>? arguments}) async {
    final db = await database;
    return await db.rawQuery(sql, arguments);
  }

  update(Map<String, dynamic> data) async {
    final db = await database;
    return await db
        .update(table, data, where: "id = ?", whereArgs: [data['id']]);
  }

  insert(Map<String, dynamic> data) async {
    final db = await database;
    String enterCode = data['enterCode'];
    String type = data['type'];

    var value = {
      'enterCode': enterCode,
      'type': type,
    };

    return await db.insert(table, value);
  }

  delete(int id) async {
    final db = await database;
    return await db.delete(table, where: "id = ?", whereArgs: [id]);
  }
}
