import 'package:flutter/material.dart';

//Color barcaBlue = const Color(0xFF004D98);  blue
//Color barcaRed = const Color(0xFFA50044);   red
//Color barcaGold = const Color(0xFFEDBB00);  yellow

class Messi extends StatelessWidget {
  const Messi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF004D98),
      appBar: AppBar(
        title: Text("importent Screen"),
        backgroundColor: const Color(0xFFA50044),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
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

                  child: Container(
                    height: 300,
                    width: 500,

                    child: Image.asset(
                      "assets/images/leo.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: 50),
              ],

              // Your Container here
            ),
          ),
        ),
      ),
    );
  }
}
