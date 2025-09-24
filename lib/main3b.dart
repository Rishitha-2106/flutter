// main3b.dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Media Query',
      home: Main3b(),
    ),
  );
}

class Main3b extends StatelessWidget {
  const Main3b({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    if (screenWidth < 600) {
      // 📱 Mobile Layout
      return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(title: const Text('Mobile Layout')),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 200,
              child: const Center(
                child: Text(
                  'This is a Mobile Layout.',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.blue,
              height: 200,
              child: const Center(
                child: Text(
                  'This is a Mobile Layout.',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      // 💻 Tablet/Desktop Layout
      return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(title: const Text('Tablet/Desktop Layout')),
        body: Column(
          children: [
            Container(
              color: Colors.red,
              height: screenHeight * 0.7,
              child: const Center(
                child: Text(
                  'This is a Tablet/Desktop Layout.',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}

/* ===============================
   🔙 Backup of old main3b.dart version
   (with nested Scaffold inside Scaffold)
   ===============================

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Media Query',
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(title: const Text('Media Query Example')),
        body: Builder(
          builder: (BuildContext context) {
            var screenWidth = MediaQuery.of(context).size.width;
            var screenHeight = MediaQuery.of(context).size.height;

            if (screenWidth < 600) {
              // 📱 Mobile Layout
              return Scaffold(
                appBar: AppBar(title: const Text('Mobile Layout')),
                body: Column(
                  children: [
                    Container(
                      color: Colors.blue,
                      height: 200,
                      child: const Center(
                        child: Text(
                          'This is a Mobile Layout.',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      color: Colors.blue,
                      height: 200,
                      child: const Center(
                        child: Text(
                          'This is a Mobile Layout.',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              // 💻 Tablet/Desktop Layout
              return Scaffold(
                appBar: AppBar(title: const Text('Tablet/Desktop Layout')),
                body: Column(
                  children: [
                    Container(
                      color: Colors.red,
                      height: screenHeight * 0.7,
                      child: const Center(
                        child: Text(
                          'This is a Tablet/Desktop Layout.',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    ),
  );
}
*/
