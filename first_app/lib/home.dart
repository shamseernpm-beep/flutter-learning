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
      body: const Center(
        child: Text(
          "THIS IS MY NEW APP",
          style: TextStyle(fontSize: 25, color: Colors.blue),
        ),
      ),
    );
  }
}
