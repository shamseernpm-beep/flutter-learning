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

            SizedBox(height: 40),
            Text(
              "MY NAME IS MUHAMMED RISWAN P",
              style: TextStyle(color: Colors.white),
            ),

            Text(
              "IAM FROM CALICUT UNIVERSITY",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            Text("CURRETLY WORKING AS ", style: TextStyle(color: Colors.white)),
            SizedBox(height: 20),
            Text(
              "INTERN OF BRIDGEON SOLUTION",
              style: TextStyle(color: Colors.white),
            ),
          ],

          // Your Container here
        ),
      ),
    );
  }
}
