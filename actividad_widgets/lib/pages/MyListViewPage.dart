import 'package:flutter/material.dart';
import 'package:actividad_widgets/widgets/ListView/PlayListView.dart';
import 'package:actividad_widgets/widgets/ListView/ImageList.dart';

class MyListViewPage extends StatelessWidget {
  const MyListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            SizedBox(
              height: 160,
              child: PlayListView(),
            )
          ],
        ),

        //     Container(
        //   child: ImageList(),
        // ),
      ),
    );
  }
}
