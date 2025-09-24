
import 'package:flutter/material.dart';

class Main2a3 extends StatelessWidget {
  const Main2a3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 218, 105),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
          child: Text(
            "Image Widget Example",
            style: TextStyle(
              backgroundColor: Colors.red,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              child: Icon(Icons.manage_accounts_rounded),
              backgroundColor: Colors.red,
              radius: 40,
            ),
          ),
          const SizedBox(height: 10),
          Image.asset('assets/im/fish.png', width: 200, height: 150),
          const SizedBox(height: 5),
          Image.asset('assets/im/screen.png', width: 200, height: 150),
          Image.network(
            'https://documents.bcci.tv/resizedimageskirti/1563_compress.png',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
