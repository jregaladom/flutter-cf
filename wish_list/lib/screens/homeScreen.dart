import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:provider/provider.dart';
import 'package:wish_list/provider/itemProvider.dart';
import 'package:wish_list/models/item.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var myWishList = context.watch<ItemProvider>().whish;
    var myItems = context.watch<ItemProvider>().items;

    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: const Text(
            'Productos',
            style: TextStyle(color: Colors.blueGrey),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 15),
              child: Badge(
                alignment: Alignment.centerLeft,
                position: BadgePosition.topEnd(top: 4, end: 2),
                shape: BadgeShape.circle,
                badgeContent: Text(
                  myWishList.length.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
                badgeColor: Colors.redAccent,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView.builder(
            itemBuilder: ((context, index) {
              Item item = myItems[index];
              return Card(
                key: ObjectKey(item),
                color: Colors.white,
                elevation: 1,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(4),
                  leading: Image.asset(
                    item.image,
                    width: 100,
                    height: 100,
                  ),
                  title: Text(item.title),
                  trailing: IconButton(
                    icon: Icon(Icons.bookmark,
                        color: myWishList.contains(item)
                            ? Colors.redAccent
                            : Colors.grey),
                    onPressed: (() {
                      if (!myWishList.contains(item)) {
                        context.read<ItemProvider>().addToWishList(item);
                      }
                    }),
                  ),
                ),
              );
            }),
            itemCount: myItems.length,
          ),
        ),
      ),
    );
  }
}
