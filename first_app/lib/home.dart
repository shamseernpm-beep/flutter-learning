import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.star), Icon(Icons.search)],
        leading: Icon(Icons.home),
        title: Text("RISWAN APP"),
        centerTitle: true,

        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.star), Icon(Icons.edit), Icon(Icons.menu)],
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(hintText: "Enter your name"),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(hintText: "Enter your age"),
              ),
            ),

            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                print("Button is clicked");
              },
              child: Text("Click Here"),
            ),
            SizedBox(height: 50),
            Text(
              "THIS IS MY NEW APP",
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
