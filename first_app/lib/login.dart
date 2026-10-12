import 'package:flutter/material.dart';
import 'package:first_app/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

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
            title: const Text("Login Failed"),
            content: const Text("Invalid username or password"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"),
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

      appBar: AppBar(
        title: const Text(
          "RISWAN APP",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Login Icon
              const Icon(Icons.account_circle, size: 100, color: Colors.blue),

              const SizedBox(height: 20),

              // Heading
              const Text(
                "WELCOME BACK!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Please login to continue",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),

              const SizedBox(height: 30),

              // Username Field
              SizedBox(
                width: 300,
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: "Enter your full name",
                    prefixIcon: const Icon(Icons.person),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Password Field
              SizedBox(
                width: 300,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    prefixIcon: const Icon(Icons.password),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Please contact the administrator to reset your password.",
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "FORGET PASSWORD",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Login Button
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Welcome to my application",
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
