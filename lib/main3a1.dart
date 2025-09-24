/* ---------------- OLD CODE (Kept in comments for reference) ----------------
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LayoutBuilder',
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(title: const Text('LayoutBuilder Example')),
        body: LayoutBuilder(
          builder: (BuildContext con, BoxConstraints cons) {
            return Center(
              child: Container(
                width: cons.maxWidth * 0.5,   // 50% of available width
                height: cons.maxHeight * 0.5, // 50% of available height
                color: Colors.red,
              ),
            );
          },
        ),
      ),
    ),
  );
}
---------------- END OLD CODE ---------------- */


// ---------------- NEW STRUCTURE FOR DRAWER APP ----------------
import 'package:flutter/material.dart';

class Main3a1 extends StatelessWidget {
  const Main3a1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: const Text('LayoutBuilder Example')),
      body: LayoutBuilder(
        builder: (BuildContext con, BoxConstraints cons) {
          return Center(
            child: Container(
              width: cons.maxWidth * 0.5,   // 50% of available width
              height: cons.maxHeight * 0.5, // 50% of available height
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
