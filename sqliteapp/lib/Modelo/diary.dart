import 'package:sqliteapp/DataBase/DbTable.dart';
import 'package:sqliteapp/DataBase/CRUD.dart';

class Diary extends CRUD {
  late int id;
  String type;
  String enterCode;
  //Diary({this.id, this.type = "", this.enterCode = ""}) : super(DBTable.diary);

  Diary({int? id, this.type = "", this.enterCode = ""}) : super(DBTable.diary) {
    this.id = id!;
  }

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
}