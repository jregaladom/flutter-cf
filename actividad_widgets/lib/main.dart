import 'package:flutter/material.dart';
import 'package:actividad_widgets/pages/MyHomePage.dart';
import 'package:actividad_widgets/pages/MyMultiChild.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyMultiChild(),
    );
  }
}
