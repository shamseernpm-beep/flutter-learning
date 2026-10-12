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
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Messi()),
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
