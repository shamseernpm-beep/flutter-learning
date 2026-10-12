import 'package:first_app/messi.dart';
import 'package:flutter/material.dart';

//Color barcaBlue = const Color(0xFF004D98);  blue
//Color barcaRed = const Color(0xFFA50044);   red
//Color barcaGold = const Color(0xFFEDBB00);  yellow

class ProfileScreen extends StatelessWidget {
  final String? username;
  const ProfileScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFC8019),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left side - Person Avatar
                  IconButton(
                    onPressed: () {
                      print("Person clicked");
                    },
                    icon: const Icon(
                      Icons.account_circle,
                      color: Colors.red,
                      size: 35,
                    ),
                  ),

                  // Right side - Location Icon
                  IconButton(
                    onPressed: () {
                      print("Location clicked");
                    },
                    icon: const Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Text(
                        "Flat 50 % Of",
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        " On First Order!",
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(labelText: "search🔍"),
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => Messi()),
              //     );
              //   },
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.blue,
              //     foregroundColor: Colors.white,
              //   ),
              //   child: Text("Go to main page"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
