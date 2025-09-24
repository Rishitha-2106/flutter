/* import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Button display',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Button Widget Example'),
        ),
        body: Column(
          children: [
            // Elevated Button
            ElevatedButton(
              onPressed: () {
                print('This is Elevated Button');
              },
              child: Text('Elevated Button'),
            ),

            // Text Button
            TextButton(
              onPressed: () {
                print('This is Text Button');
              },
              child: Text('Text Button'),
            ),

            // Outlined Button with Image
            OutlinedButton(
              onPressed: () {
                print('This is Outlined button');
              },
              child: Image.asset(
                'assets/im/fish.png',
                width: 175,
                height: 130,
              ),
            ),

            // Icon Button
            IconButton(
              onPressed: () {
                print('This is Icon Button');
              },
              icon: Icon(Icons.thumb_up),
            ),

            // Floating Action Button
            FloatingActionButton(
              onPressed: () {
                print('This is Floating action button');
              },
              shape: CircleBorder(
                side: BorderSide(color: Colors.red, width: 5),
              ),
              child: Icon(Icons.add),
            ),

            // Raw Material Button
            RawMaterialButton(
              onPressed: () {
                print('This is Raw material button');
              },
              fillColor: Colors.amber,
              shape: CircleBorder(
                side: BorderSide(color: Colors.red, width: 5),
              ),
              child: Icon(Icons.star),
            ),
          ],
        ),
      ),
    ),
  );
}
 */
import 'package:flutter/material.dart';

class Main2a4 extends StatelessWidget {
  const Main2a4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Button Widget Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                print('This is Elevated Button');
              },
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                print('This is Text Button');
              },
              child: const Text('Text Button'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                print('This is Outlined button');
              },
              child: Image.asset(
                'assets/im/fish.png',
                width: 175,
                height: 130,
              ),
            ),
            const SizedBox(height: 10),
            IconButton(
              onPressed: () {
                print('This is Icon Button');
              },
              icon: const Icon(Icons.thumb_up),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                print('This is Floating action button');
              },
              shape: const CircleBorder(
                side: BorderSide(color: Colors.red, width: 5),
              ),
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            RawMaterialButton(
              onPressed: () {
                print('This is Raw material button');
              },
              fillColor: Colors.amber,
              shape: const CircleBorder(
                side: BorderSide(color: Colors.red, width: 5),
              ),
              child: const Icon(Icons.star),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
