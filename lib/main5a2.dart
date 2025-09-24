import 'package:flutter/material.dart';

// ---------------- OLD CODE ----------------
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int count = 0;
//   String name = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             const SizedBox(height: 30),
//             Text(
//               'Result : $count',
//               style: const TextStyle(fontSize: 30),
//             ),
//             Text(
//               'Result : $name',
//               style: const TextStyle(fontSize: 30),
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               count++;
//               name = 'Hi this is SVECW';
//             });
//           },
//           child: const Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
// -----------------------------------------------------------

class Main5a2 extends StatefulWidget {
  const Main5a2({super.key});

  @override
  State<Main5a2> createState() => _Main5a2State();
}

class _Main5a2State extends State<Main5a2> {
  int count = 0;
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
          Text(
            'Result : $count',
            style: const TextStyle(fontSize: 30),
          ),
          Text(
            'Result : $name',
            style: const TextStyle(fontSize: 30),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            name = 'Hi this is SVECW';
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
