import 'package:flutter/material.dart';

void main() {
  runApp(const Main8a());
}

class Main8a extends StatelessWidget {
  const Main8a({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationEx(),
    );
  }
}

class AnimationEx extends StatefulWidget {
  const AnimationEx({super.key});

  @override
  State<AnimationEx> createState() => _AnimationExState();
}

class _AnimationExState extends State<AnimationEx> {
  bool visible = true;
  bool change = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          visible = !visible;
          change = !change;
        });
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('8a Fade + Container Animation')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // REGD NO: 23B01A12B0
              // DATE:

              // Fade animation
              AnimatedOpacity(
                opacity: visible ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                child: Image.asset(
                  'assets/images/twitter.png',
                  width: 150,
                  height: 150,
                ),
              ),
              const SizedBox(height: 30),

              // Animated container
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                width: change ? 100 : 200,
                height: change ? 100 : 200,
                decoration: BoxDecoration(
                  color: change ? Colors.blue : Colors.orange,
                  borderRadius: BorderRadius.circular(change ? 20 : 60),
                ),
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    visible = !visible;
                    change = !change;
                  });
                },
                child: const Text('Toggle Animations'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
