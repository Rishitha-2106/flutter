import 'package:flutter/material.dart';
import 'custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Product List"),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: const [
            CustomButton(
              description: 'doctor gadgets',
              item: 'stethoscope',
              price: 1000,
              image: 'assets/images/youtube.png',
            ),
            CustomButton(
              item: 'coat',
              price: 20000,
              image: 'assets/images/whatsapp.png',
              description: 'doctor coat',
            ),
            CustomButton(
              item: 'checker',
              price: 200,
              image: 'assets/images/twitter.png',
              description: 'doctor gadget',
            ),
          ],
        ),
      ),
    );
  }
}