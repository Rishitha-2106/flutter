import 'package:flutter/material.dart';

// ---------------- OLD CODE ----------------
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text(
//             ' Example of \n StatelessWidget ',
//             style: TextStyle(fontSize: 30),
//           ),
//         ),
//       ),
//     );
//   }
// }
// -----------------------------------------------------------

class Main5a1 extends StatelessWidget {
  const Main5a1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          ' Example of \n StatelessWidget ',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
