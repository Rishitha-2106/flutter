import 'package:flutter/material.dart';

void main() {
  runApp(Main2a2());
}

class Main2a2 extends StatelessWidget {
  const Main2a2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 13, 218, 105), // green background
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            'Scaffold Widget Example',
            style: TextStyle(backgroundColor: Colors.red),
          ),
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(
              backgroundColor: Colors.blue,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
