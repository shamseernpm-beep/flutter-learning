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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(leading: Icon(Icons.home), title: Text("HOME")),
            ListTile(leading: Icon(Icons.person), title: Text("PERSON")),
            ListTile(leading: Icon(Icons.settings), title: Text("SETTINGS")),
            ListTile(leading: Icon(Icons.menu), title: Text("MENU")),

            SizedBox(height: 50),
            Image.asset(
              "assets/images/riswan.jpeg",
              width: 300,
              height: 400,
              fit: BoxFit.cover,
            ),
            Center(
              child: Title(color: Colors.black, child: Text("LAST SCREENS")),
            ),
            SizedBox(height: 30),
          ],

          // Your Container here
        ),
      ),
    );
  }
}
