import 'package:first_app/lastscreen.dart';
import 'package:flutter/material.dart';

//Color barcaBlue = const Color(0xFF004D98);  blue
//Color barcaRed = const Color(0xFFA50044);   red
//Color barcaGold = const Color(0xFFEDBB00);  yellow

class ProfileScreen extends StatelessWidget {
  final String username;
  const ProfileScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF004D98),
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: const Color(0xFFEDBB00)),
        ),
        backgroundColor: const Color(0xFFA50044),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "WELCOME $username",
                  style: TextStyle(
                    color: const Color(0xFFEDBB00),
                    fontSize: 15,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: SizedBox(
                    width: 400,
                    child: Card(
                      elevation: 10,
                      color: const Color(0xFFA50044),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "MANGO",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "mango juice",
                              style: TextStyle(color: Colors.white),
                            ),
                            leading: Icon(Icons.menu),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: SizedBox(
                    width: 400,
                    child: Card(
                      elevation: 10,
                      color: const Color(0xFFA50044),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "APPLE",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "apple juice",
                              style: TextStyle(color: Colors.white),
                            ),
                            leading: Icon(Icons.menu),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: SizedBox(
                    width: 400,
                    child: Card(
                      elevation: 10,
                      color: const Color(0xFFA50044),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "SP",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "sp avilum milk",
                              style: TextStyle(color: Colors.white),
                            ),
                            leading: Icon(Icons.menu),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: SizedBox(
                    width: 400,
                    child: Card(
                      elevation: 10,
                      color: const Color(0xFFA50044),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "LIME",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "pinaple lime",
                              style: TextStyle(color: Colors.white),
                            ),
                            leading: Icon(Icons.menu),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: SizedBox(
                    child: SizedBox(
                      width: 400,
                      child: Card(
                        elevation: 10,
                        color: const Color(0xFFA50044),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                "TEA",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFFEDBB00),
                                ),
                              ),
                              subtitle: Text(
                                "mint tea",
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(Icons.menu),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: SizedBox(
                    width: 400,
                    child: Card(
                      elevation: 10,
                      color: const Color(0xFFA50044),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "COFFIE",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "michein coffe",
                              style: TextStyle(color: Colors.white),
                            ),
                            leading: Icon(Icons.menu),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
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
                  backgroundColor: Colors.blue,
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
