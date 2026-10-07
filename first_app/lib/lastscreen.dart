import 'package:flutter/material.dart';

class Lastscreen extends StatefulWidget {
  const Lastscreen({super.key});

  @override
  State<Lastscreen> createState() => _LastscreenState();
}

class _LastscreenState extends State<Lastscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("importent Screen")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15,
                    spreadRadius: 3,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/riswan.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 50),
            Center(
              child: Text(
                "SKILLS",
                style: TextStyle(fontSize: 35, color: Colors.red),
              ),
            ),
            Center(child: Container(height: 2, width: 80, color: Colors.black)),
            SizedBox(height: 40),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 15,
                          spreadRadius: 3,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "HTML",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    height: 100,
                    width: 100,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 196, 27),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 15,
                          spreadRadius: 3,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text("CSS", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    height: 100,
                    width: 100,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 196, 43),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 15,
                          spreadRadius: 3,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "JAVA SCRIPT",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    height: 100,
                    width: 100,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 204, 62),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 15,
                          spreadRadius: 3,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "DART",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ListTile(leading: Icon(Icons.home), title: Text("HOME")),
            // ListTile(leading: Icon(Icons.person), title: Text("PERSON")),
            // ListTile(leading: Icon(Icons.settings), title: Text("SETTINGS")),
            // ListTile(leading: Icon(Icons.menu), title: Text("MENU")),
            SizedBox(height: 50),
            Center(
              child: Text(
                "COURSE",
                style: TextStyle(fontSize: 35, color: Colors.red),
              ),
            ),
            Center(child: Container(height: 2, width: 80, color: Colors.black)),

            SizedBox(height: 40),
            Container(
              height: 100,
              width: 100,
              // color: Colors.amber,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15,
                    spreadRadius: 3,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "FLUTTER",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
          ],

          // Your Container here
        ),
      ),
    );
  }
}
