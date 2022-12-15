import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:estados_provider/counter.dart';

class TextCounter extends StatelessWidget {
  const TextCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<Counter>().count.toString(),
      style: Theme.of(context).textTheme.headline4,
    );
    
  }
}
