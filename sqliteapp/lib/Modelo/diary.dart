import 'package:sqliteapp/DataBase/DbTable.dart';
import 'package:sqliteapp/DataBase/CRUD.dart';

class Diary extends CRUD {
  late int id;
  String type;
  String enterCode;
  //Diary({this.id, this.type = "", this.enterCode = ""}) : super(DBTable.diary);

  Diary({this.id = 0, this.type = "", this.enterCode = ""})
      : super(DBTable.diary);

  factory Diary.toObject(Map<dynamic, dynamic> data) {
    // return (data != null)
    //     ? Diary(
    //         id: data['id'], type: data['type'], enterCode: data['enterCode'])
    //     : Diary();

    return Diary(
        id: data['id'], type: data['type'], enterCode: data['enterCode']);
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'type': type, 'enterCode': enterCode};
  }

  getList(parsed) {
    return (parsed as List).map((map) => Diary.toObject(map)).toList();
  }

  save() async {
    id = await insert(toMap());
    return (id > 0) ? this : null;
  }

  Future<List<Diary>> getDiaries() async {
    var result = await query("SELECT * FROM ${DBTable.diary}");
    return getList(result);
  }

  checkEnterCode(String enterCode) async {
    var result = await query(
        "SELECT * FROM ${DBTable.diary} WHERE id=? and enterCode = ?",
        arguments: [id, enterCode]);

    return Diary.toObject(result[0]);
  }
}
