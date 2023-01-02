import 'package:sqliteapp/DataBase/DbTable.dart';
import 'package:sqliteapp/DataBase/CRUD.dart';

class Page extends CRUD {
  late int id;
  String date;
  String title;
  String content;
  late int idDiary;

  //Diary({this.id, this.type = "", this.enterCode = ""}) : super(DBTable.diary);

  Page(
      {this.id = 0,
      this.date = "",
      this.title = "",
      this.content = "",
      int? idDiary})
      : super(DBTable.page);

  factory Page.toObject(Map<dynamic, dynamic> data) {
    return Page(
        id: data['id'],
        date: data['date'],
        title: data['title'],
        content: data['content'],
        idDiary: data['idDiary']);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'title': title,
      'contenido': content,
      'idDiary': idDiary
    };
  }

  getList(parsed) {
    return (parsed as List).map((map) => Page.toObject(map)).toList();
  }

  Future<List<Page>> getPages(idDiary) async {
    var result = await query("SELECT * FROM ${DBTable.page} WHERE diaryId=?",
        arguments: [idDiary]);
    return getList(result);
  }

  saveOrUpdate() async {
    id = (id > 0) ? await update(toMap()) : await insert(toMap());
    return (id > 0) ? this : null;
  }
}
