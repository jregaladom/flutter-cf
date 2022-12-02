import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Image(
          image: AssetImage("assets/images/10576462.jpg"), fit: BoxFit.fill),
    );
  }
}
