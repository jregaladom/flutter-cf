import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepPurpleAccent,
      title: const Text('Inicio'),
      centerTitle: true,
      leading: const Icon(Icons.star),
      actions: const [
        Icon(Icons.edit),
        Icon(Icons.more_vert),
      ],
      toolbarHeight: 190,
      automaticallyImplyLeading: false,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
