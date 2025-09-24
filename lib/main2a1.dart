import 'package:flutter/material.dart';

class Main2a1 extends StatelessWidget {
  const Main2a1({super.key});

  @override
  Widget build(BuildContext context) {
    var text = const Text(
      'Hello World',
      style: TextStyle(
        backgroundColor: Colors.blue,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Widget Example'),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: text),
    );
  }
}
