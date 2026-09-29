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
        actions: [Icon(Icons.home)],
        leading: Icon(Icons.search),
        title: Text("RISWAN APP"),
        centerTitle: true,

        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(hintText: "Enter your name"),
              ),
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
