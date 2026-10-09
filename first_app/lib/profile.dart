import 'package:first_app/lastscreen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String username;
  const ProfileScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"), backgroundColor: Colors.blue),
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
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: SizedBox(
                    width: 400,
                    child: Card(
                      elevation: 10,
                      color: const Color.fromARGB(255, 85, 165, 231),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "MANGO",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text("mango juice"),
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
                      color: const Color.fromARGB(255, 85, 165, 231),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "APPLE",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text("apple juice"),
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
                      color: const Color.fromARGB(255, 85, 165, 231),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "SP",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text("sp avilum milk"),
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
                      color: const Color.fromARGB(255, 85, 165, 231),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "LIME",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text("pinaple lime"),
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
                        color: const Color.fromARGB(255, 85, 165, 231),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                "TEA",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              subtitle: Text("mint tea"),
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
                      color: const Color.fromARGB(255, 85, 165, 231),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "COFFIE",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text("michein coffe"),
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
