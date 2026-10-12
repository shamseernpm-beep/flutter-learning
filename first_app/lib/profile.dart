import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String? username;

  const ProfileScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFC8019),

      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            print("Person clicked");
          },
          icon: const Icon(Icons.account_circle, color: Colors.red, size: 35),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Location clicked");
            },
            icon: const Icon(Icons.location_on, color: Colors.red, size: 25),
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Flat 50 % Of",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),

                const Text(
                  "On First Order!",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search 🔍",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
