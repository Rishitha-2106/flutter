import 'package:flutter/material.dart';
import 'screens/first.dart';
import 'screens/second.dart';
import 'screens/third.dart';

class Main4b extends StatelessWidget {
  const Main4b({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Named Routes Example",
      debugShowCheckedModeBanner: false,
      // initial route when app starts
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
      },
    );
  }
}
