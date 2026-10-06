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
              SizedBox(height: 100),
              SizedBox(
                height: 40,
                width: 40,
                child: Image.asset("asset/images/name.jpeg"),
              ),
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
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter youre name",
                    labelText: "name",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    prefixIcon: Icon(Icons.email),
                    labelText: "email",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "enter your password",
                    prefixIcon: Icon(Icons.key),
                    border: OutlineInputBorder(),
                    labelText: "password",
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    print("forget button is clicked");
                  },
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
