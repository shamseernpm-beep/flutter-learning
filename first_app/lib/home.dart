import 'dart:math';

import 'package:flutter/material.dart';
import 'package:first_app/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    if (usernameController.text == "riswan" &&
        passwordController.text == "1234") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("login failed"),
            content: Text("invalid user name or password"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("ok"),
              ),
            ],
          );
        },
      );
    }
  }

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
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: "Enter your full name",
                  prefixIcon: Icon(Icons.person),
                  labelText: "name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 50),

            Text(
              "THIS IS MY NEW APP",
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: login,
              child: Text("login"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
