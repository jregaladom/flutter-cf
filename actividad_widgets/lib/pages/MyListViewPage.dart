import 'package:flutter/material.dart';
import 'package:actividad_widgets/widgets/ListView/PlayListView.dart';
import 'package:actividad_widgets/widgets/ListView/AlbumListView.dart';
import 'package:actividad_widgets/widgets/ListView/ImageList.dart';

class MyListViewPage extends StatelessWidget {
  const MyListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: (queryData.size.height / 3),
              child: const AlbumListView(),
            ),
            SizedBox(
              height: (queryData.size.height / 3) * 1.9,
              child: const PlayListView(),
            ),
          ],
        ),
      )),
    );
  }
}
