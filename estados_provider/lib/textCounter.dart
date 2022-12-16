import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:estados_provider/counter.dart';

class TextCounter extends StatelessWidget {
  const TextCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(builder: (context, counter, _) {
      return Column(
        children: [
          Text(
            context.select((Counter counter) => counter.count.toString()),
            style: Theme.of(context).textTheme.headline4,
          ),
          // Text(
          //   counter.count.toString(),
          //   style: Theme.of(context).textTheme.headline4,
          // ),
          // Text(
          //   counter.add.toString(),
          //   style: Theme.of(context).textTheme.headline4,
          // ),
          // Text(
          //   counter.multy.toString(),
          //   style: Theme.of(context).textTheme.headline4,
          // )
        ],
      );
    });
  }
}


// Text(
//       context.watch<Counter>().count.toString(),
//       style: Theme.of(context).textTheme.headline4,
//     )