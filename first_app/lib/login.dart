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

  //Color barcaBlue = const Color(0xFF004D98);
  //Color barcaRed = const Color(0xFFA50044);
  //Color barcaGold = const Color(0xFFEDBB00);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF004D98),
      appBar: AppBar(
        actions: [Icon(Icons.star), Icon(Icons.search)],
        leading: IconButton(
          onPressed: () {
            debugPrint("Home page is clicked");
          },
          icon: Icon(Icons.home),
        ),
        title: Text(
          "BARCELONA",
          style: TextStyle(
            color: const Color(0xFFEDBB00),
            fontWeight: FontWeight(700),
          ),
        ),
        centerTitle: true,

        backgroundColor: const Color(0xFFA50044),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 400,
              height: 450,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFA50044),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15,
                    spreadRadius: 3,
                    offset: Offset(7, 9),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // your existing widgets
                  Text(
                    "VICA BARCA",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFFEDBB00),
                      fontWeight: FontWeight(700),
                    ),
                  ),

                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.edit),
                      Icon(Icons.menu),
                    ],
                  ),
                  SizedBox(height: 20),
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
                      backgroundColor: const Color(0xFFEDBB00),
                      foregroundColor: Colors.black,
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
