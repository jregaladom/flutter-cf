import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wish_list/provider/itemProvider.dart';
import 'package:wish_list/screens/homeScreen.dart';

void main() {
  //runApp(const MyApp());
  runApp(ChangeNotifierProvider(
    create: (context) => ItemProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
