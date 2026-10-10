//Color barcaBlue = const Color(0xFF004D98);  blue
//Color barcaRed = const Color(0xFFA50044);   red
//Color barcaGold = const Color(0xFFEDBB00);  yellow

import 'package:flutter/material.dart';

class Messi extends StatelessWidget {
  const Messi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF004D98),

      appBar: AppBar(
        title: const Text(
          "MESSI STATUS PAGE",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFFEDBB00),
          ),
        ),
        backgroundColor: const Color(0xFFA50044),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Center(
            child: Column(
              children: [
                // Messi Image
                Container(
                  height: 300,
                  width: 300,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    boxShadow: const [
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
                      "assets/images/leo.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 50),

                // Messi Status Card
                Container(
                  width: 300,

                  decoration: BoxDecoration(
                    color: const Color(0xFFA50044),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  padding: const EdgeInsets.all(15),

                  child: Column(
                    children: [
                      const Text(
                        "MESSI STATUS",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFEDBB00),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 170,
                        color: const Color(0xFFEDBB00),
                      ),

                      Align(
                        alignment: AlignmentGeometry.topLeft,
                        child: Column(children: [Text("GOELS : ")]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
