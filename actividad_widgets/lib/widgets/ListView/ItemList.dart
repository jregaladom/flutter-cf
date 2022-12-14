import 'package:flutter/material.dart';
import 'package:actividad_widgets/widgets/ListView/Items.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key, required this.sound}) : super(key: key);
  final Sound sound;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(
              Icons.play_circle,
              size: 38,
              color: Colors.redAccent,
            ),
            title: Text(sound.title),
            subtitle: Text(sound.author),
            trailing: const Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
