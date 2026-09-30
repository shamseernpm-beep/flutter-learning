import 'dart:math';

import 'package:flutter/material.dart';
import 'package:first_app/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.star), Icon(Icons.search)],
        leading: IconButton(
          onPressed: () {
            print("Home page is clicked");
          },
          icon: Icon(Icons.home),
        ),
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
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
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
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: Text("Go to profile"),
            ),
          ],
        ),
      ),
    );
  }
}
