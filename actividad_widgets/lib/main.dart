import 'package:flutter/material.dart';
import 'package:actividad_widgets/pages/MyHomePage.dart';
import 'package:actividad_widgets/pages/MyMultiChild.dart';
import 'package:actividad_widgets/pages/MyListViewPage.dart';
import 'package:actividad_widgets/pages/MyLoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyLoginPage(),
    );
  }
}
