//import 'package:diary_app/Widget/Card/PageCard.dart';
import 'package:sqliteapp/Modelo/page.dart' as pm;
import 'package:sqliteapp/Modelo/diary.dart';
import 'package:sqliteapp/Page/formPage.dart';
import 'package:flutter/material.dart';
import 'package:sqliteapp/Widget/Card/PageCard.dart';

class HomePage extends StatefulWidget {
  Diary diary;

  HomePage(this.diary);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<pm.Page> pages;

  addPages() {
    List<pm.Page> pages = [
      pm.Page(
          id: 10,
          date: "14-05-2020",
          title: "Pagina 10",
          content: "Pagina 10",
          idDiary: 1),
      pm.Page(
          id: 11,
          date: "14-05-2020",
          title: "Pagina 11",
          content: "Pagina 11",
          idDiary: 1),
      pm.Page(
          id: 12,
          date: "14-05-2020",
          title: "Pagina 12",
          content: "Pagina 12",
          idDiary: 1),
      pm.Page(
          id: 12,
          date: "14-05-2020",
          title: "Pagina 12",
          content: "Pagina 12",
          idDiary: 1),
      pm.Page(
          id: 13,
          date: "14-05-2020",
          title: "Pagina 13",
          content: "Pagina 13",
          idDiary: 1)
    ];
    //pm.Page().insertPages(pages);
  }

  void goForm() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FormPage(
                  addPage,
                  diary: widget.diary,
                )));
  }

  addPage(Page page) {
    //pages.add(page);
  }

  getListView() {
    return ListView.builder(
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index) {
          return PageCard(pages[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienveni@ a tu diario ${widget.diary.type}"),
        actions: [
          IconButton(
            icon: const Icon(Icons.playlist_add),
            onPressed: addPages,
          )
        ],
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: goForm,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
