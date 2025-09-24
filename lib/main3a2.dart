import 'package:flutter/material.dart';

class Main3a2 extends StatelessWidget {
  const Main3a2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LayoutBuilder',
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text('LayoutBuilder Example'),
        ),
        body: LayoutBuilder(
          builder: (BuildContext con, BoxConstraints cons) {
            if (cons.maxWidth > 500 && cons.maxWidth < 600) {
              return Container(color: Colors.red);
            } else if (cons.maxWidth > 600 && cons.maxWidth < 800) {
              return Container(color: Colors.green);
            } else {
              return Container(color: Colors.blue);
            }
          },
        ),
      ),
    );
  }
}
