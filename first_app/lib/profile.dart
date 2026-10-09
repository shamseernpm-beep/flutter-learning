import 'package:first_app/lastscreen.dart';
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
      backgroundColor: const Color(0xFF004D98),
      appBar: AppBar(
        title: Center(
          child: Text(
            "PLAYERS  PROFILE",
            style: TextStyle(
              color: const Color(0xFFEDBB00),
              fontSize: 30,
              fontWeight: FontWeight(700),
            ),
          ),
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
                              "LIONEL MESSI",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "RWF",
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
                              "NEYMAR JR",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "LWF",
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
                              "SUAREZ",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "CF",
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
                              "INIESTA",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "CMF",
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
                                "RAKITIC",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFFEDBB00),
                                ),
                              ),
                              subtitle: Text(
                                "CMF",
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
                              "BUSQUEST",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "DMF",
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
                              "ALVES",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "RB",
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
                              "ALBA",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "LB",
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
                              "PIOUE",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "CB",
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
                              "MASCHERANO",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "CB",
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
                              "TER STAGEN",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEDBB00),
                              ),
                            ),
                            subtitle: Text(
                              "GK",
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
