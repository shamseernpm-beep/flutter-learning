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
  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    if (usernameController.text == "riswan" &&
        passwordController.text == "1234") {
      Navigator.pushReplacement(
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
      backgroundColor: const Color(0xFFFAF9F6),
      appBar: AppBar(backgroundColor: Colors.white),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 400,
              height: 450,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "WELCOME",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ),
                    Text("Sign in your store dashboard"),
                    SizedBox(height: 50),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          hintText: "Enter your email",
                          labelText: 'email',
                          filled: true,
                          fillColor: const Color(0xFFFAF9F6),
                          prefixIcon: Icon(Icons.person),
                          // labelText: "name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,

                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          fillColor: const Color(0xFFFAF9F6),
                          filled: true,
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "FORGET PASSWORD",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    ElevatedButton(
                      onPressed: login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFAF9F6),
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 15,
                        ),
                      ),
                      child: Text("sign in"),
                    ),

                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
