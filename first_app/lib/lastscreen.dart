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
      appBar: AppBar(title: Text("importent Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView(
              children: [
                ListTile(leading: Icon(Icons.home), title: Text("HOME")),
                ListTile(leading: Icon(Icons.person), title: Text("PERSON")),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("SETTINGS"),
                ),
                ListTile(leading: Icon(Icons.menu), title: Text("MENU")),
              ],
            ),
            Container(
              width: 300,
              height: 500,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HELLO EVERY ONE",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "WELCOME BACK",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "THIS IS MY NEW APP",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
