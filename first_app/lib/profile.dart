import 'package:first_app/lastscreen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("This is Profile Screen", style: TextStyle(fontSize: 25)),
              SizedBox(height: 100),
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
                  decoration: InputDecoration(hintText: "Enter youre name"),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(hintText: "enter your password"),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Lastscreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: Text("Next Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
