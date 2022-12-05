import 'package:flutter/material.dart';

class MyMultiChild extends StatelessWidget {
  const MyMultiChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: const [
                Image(
                    image: AssetImage("assets/images/pngwing.png"),
                    fit: BoxFit.fill),
                CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      'Enero',
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                    Text(
                      'Pikachu',
                      style: TextStyle(color: Colors.redAccent, fontSize: 21),
                    )
                  ],
                ),
                const Icon(
                  Icons.bolt,
                  size: 30,
                  color: Colors.red,
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '00:19',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  color: Colors.redAccent,
                  onPressed: () {},
                  icon: const Icon(Icons.repeat, size: 30),
                ),
                IconButton(
                  color: Colors.redAccent,
                  onPressed: () {},
                  icon: const Icon(Icons.skip_previous, size: 30),
                ),
                Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.redAccent,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    onPressed: () {
                      //  You enter here what you want the button to do once the user interacts with it
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    iconSize: 20.0,
                  ),
                ),
                IconButton(
                  color: Colors.redAccent,
                  onPressed: () {},
                  icon: const Icon(Icons.skip_next, size: 30),
                ),
                IconButton(
                  color: Colors.redAccent,
                  onPressed: () {},
                  icon: const Icon(Icons.volume_up_rounded, size: 30),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
