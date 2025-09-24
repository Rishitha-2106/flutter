import 'package:flutter/material.dart';

// ---------------- OLD CODE ----------------
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 13, 218, 105),
//         appBar: AppBar(
//           backgroundColor: Colors.amber,
//           title: Center(
//             child: Text(
//               'Container Widget Example',
//               style: TextStyle(
//                 backgroundColor: Colors.red,
//                 fontSize: 25,
//               ),
//             ),
//           ),
//         ), // AppBar
//         body: Container(
//           width: 200,
//           height: 200,
//           padding: EdgeInsets.all(20),
//           margin: EdgeInsets.all(30),
//           decoration: BoxDecoration(
//             border: Border.all(width: 20, color: Colors.blue),
//             color: Colors.red,
//           ),
//           alignment: Alignment.bottomRight,
//           child: Text(
//             'Hi this shri vishnu engineering college for women',
//             style: TextStyle(fontSize: 20),
//           ),
//         ), // Container
//       ), // Scaffold
//     ), // MaterialApp
//   );
// }
// -----------------------------------------------------------

class Main2a5 extends StatelessWidget {
  const Main2a5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 218, 105),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: Text(
            'Container Widget Example',
            style: TextStyle(
              backgroundColor: Colors.red,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          border: Border.all(width: 20, color: Colors.blue),
          color: Colors.red,
        ),
        alignment: Alignment.bottomRight,
        child: Text(
          'Hi this shri vishnu engineering college for women',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
