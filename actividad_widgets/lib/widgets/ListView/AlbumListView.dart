import 'package:flutter/material.dart';
import 'package:actividad_widgets/widgets/ListView/Items.dart';
import 'package:actividad_widgets/widgets/ListView/ImageList.dart';

class AlbumListView extends StatelessWidget {
  const AlbumListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: sounds.length,
      itemBuilder: (context, index) => ImageList(
        sound: sounds[index],
      ),
    );
  }
}
