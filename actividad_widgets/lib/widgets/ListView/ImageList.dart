import 'package:flutter/material.dart';
import 'package:actividad_widgets/widgets/ListView/Items.dart';

class ImageList extends StatelessWidget {
  const ImageList({Key? key, required this.sound}) : super(key: key);
  final Sound sound;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: const EdgeInsets.all(10),
        child: Image(image: AssetImage(sound.cover), fit: BoxFit.fill),
      ),
    );
  }
}
