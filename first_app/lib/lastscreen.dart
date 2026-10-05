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
            ListTile(leading: Icon(Icons.home), title: Text("HOME")),
            ListTile(leading: Icon(Icons.person), title: Text("PERSON")),
            ListTile(leading: Icon(Icons.settings), title: Text("SETTINGS")),
            ListTile(leading: Icon(Icons.menu), title: Text("MENU")),

            SizedBox(height: 50),
            Container(
              height: 500,
              width: 400,
              color: Colors.blue,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 60,
                    child: Text(
                      "THANKS CARD ",
                      style: TextStyle(fontSize: 40, color: Colors.red),
                    ),
                  ),

                  Positioned(
                    left: 100,
                    top: 150,
                    child: Column(
                      children: [
                        Text("THANKS FOR EVERY ONE "),
                        Text("FIRST THANKS FOR ME"),
                        Text("AND FOR EVERY ONES"),
                        Text("THIS IS MY FIRST APP"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],

          // Your Container here
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Lastscreen extends StatefulWidget {
//   const Lastscreen({super.key});

//   @override
//   State<Lastscreen> createState() => _LastscreenState();
// }

// class _LastscreenState extends State<Lastscreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Important Screen")),

//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             ListTile(leading: Icon(Icons.home), title: Text("HOME")),

//             ListTile(leading: Icon(Icons.person), title: Text("PERSON")),

//             ListTile(leading: Icon(Icons.settings), title: Text("SETTINGS")),

//             ListTile(leading: Icon(Icons.menu), title: Text("MENU")),

//             SizedBox(height: 50),

//             Container(
//               height: 500,
//               width: 400,
//               color: Colors.blue,

//               child: Stack(
//                 children: [
//                   // Main title
//                   Positioned(
//                     top: 20,
//                     left: 60,
//                     child: Text(
//                       "THANKS CARD",
//                       style: TextStyle(fontSize: 40, color: Colors.red),
//                     ),
//                   ),

//                   // Description
//                   Positioned(
//                     top: 150,
//                     left: 100,
//                     child: Column(
//                       children: [
//                         Text("THANKS FOR EVERY ONE"),
//                         Text("FIRST THANKS FOR ME"),
//                         Text("AND FOR EVERY ONES"),
//                         Text("THIS IS MY FIRST APP"),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
