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
            SizedBox(height: 50),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15,
                    spreadRadius: 3,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/riswan.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 40),
            Center(
              child: Text(
                "SKILLS",
                style: TextStyle(fontSize: 35, color: Colors.red),
              ),
            ),

            // ListTile(leading: Icon(Icons.home), title: Text("HOME")),
            // ListTile(leading: Icon(Icons.person), title: Text("PERSON")),
            // ListTile(leading: Icon(Icons.settings), title: Text("SETTINGS")),
            // ListTile(leading: Icon(Icons.menu), title: Text("MENU")),
          ],

          // Your Container here
        ),
      ),
    );
  }
}
