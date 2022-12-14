import 'package:flutter/material.dart';
import 'package:actividad_widgets/widgets/ListView/Items.dart';
import 'package:actividad_widgets/widgets/ListView/ItemList.dart';

class PlayListView extends StatelessWidget {
  const PlayListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: sounds.length,
      itemBuilder: (context, index) => ItemList(
        sound: sounds[index],
      ),
    );
  }
}
