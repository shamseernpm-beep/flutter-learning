import 'package:first_app/lastscreen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String username;
  const ProfileScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "WELCOME $username",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Text("This is Profile Screen", style: TextStyle(fontSize: 25)),
              SizedBox(height: 20),
              SizedBox(
                height: 300,
                width: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(180),
                  child: Image.asset(
                    "assets/images/name.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: 300,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "MY NAME IS MUHAMMED RISWAN P",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "IAM FROM CALICUT UNIVERSITY",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "CURRETLY WORKING AS ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "INTERN OF BRIDGEON SOLUTION",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("FORGET PASSWORD"),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lastscreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: Text("Go to main page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
