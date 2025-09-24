import 'package:flutter/material.dart';

class Main2b2 extends StatelessWidget {
  const Main2b2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text(
          'Stack Widget Example',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              width: 300,
              height: 300,
              child: Image(image: AssetImage('assets/images/youtube.png')),
              color: Colors.lightBlue,
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              child: Image(image: AssetImage('assets/images/whatsapp.png')),
              color: Colors.amber,
            ),
          ),
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          const Center(
            child: Text("Hi"),
          ),
        ],
      ),
    );
  }
}
