import 'package:flutter/material.dart';

class Lastscreen extends StatefulWidget {
  const Lastscreen({super.key});

  @override
  State<Lastscreen> createState() => _LastscreenState();
}

class _LastscreenState extends State<Lastscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Last Screen")),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text("apple"),
                  Text("mango"),
                  Text("banana"),
                  Text("mango"),
                  Text("apple"),
                  Text("mango"),
                  Text("apple"),
                  Text("mango"),
                  Text("apple"),
                  Text("mango"),
                  Text("apple"),
                  Text("mango"),
                ],
              ),
            ),
            Text("This is Last Screen"),
          ],
        ),
      ),
    );
  }
}
