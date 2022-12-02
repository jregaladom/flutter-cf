import 'package:flutter/material.dart';
import 'package:actividad_widgets/widgets/MyAppBar.dart';
import 'package:actividad_widgets/widgets/MyImage.dart';
import 'package:actividad_widgets/widgets/MyFloatingActionButton.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: MyImage(),
      ),
      appBar: MyAppBar(),
      floatingActionButton: MyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
