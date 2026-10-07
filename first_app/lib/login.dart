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
        MaterialPageRoute(
          builder: (context) =>
              ProfileScreen(username: usernameController.text),
        ),
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
            Container(
              height: 500,
              width: 500,
              color: Colors.lightBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "THIS IS MY NEW APP",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.edit),
                      Icon(Icons.menu),
                    ],
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
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  ElevatedButton(
                    onPressed: login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                    ),
                    child: Text("LOGIN"),
                  ),

                  SizedBox(height: 10),

                  TextButton(onPressed: () {}, child: Text("FORGET PASSWORD")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
