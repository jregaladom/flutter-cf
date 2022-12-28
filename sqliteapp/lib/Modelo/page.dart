import 'package:sqliteapp/DataBase/DbTable.dart';
import 'package:sqliteapp/DataBase/CRUD.dart';

class Page extends CRUD {
  late int id;
  String date;
  String title;
  String content;
  int idDiary;

  //Diary({this.id, this.type = "", this.enterCode = ""}) : super(DBTable.diary);

  Page(
      {int? id,
      this.date = "",
      this.title = "",
      this.content = "",
      int? idDiary})
      : super(DBTable.page) {
    this.id = id!;
    this.idDiary = idDiary;
  }

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
}
