import 'package:flutter/material.dart';

void main() {
  runApp(const Main8b());
}

class Main8b extends StatelessWidget {
  const Main8b({super.key});

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

class _AnimationExState extends State<AnimationEx>
    with TickerProviderStateMixin {
  bool visible = true;

  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    // Slide Animation
    _slideController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(1, 0),
    ).animate(CurvedAnimation(parent: _slideController, curve: Curves.easeInOut));

    _slideController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // REGD NO: 23B01A12B0
      // DATE:
      onTap: () {
        setState(() {
          visible = !visible;
        });
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('8b Animations (Fade + Slide)')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Fade Animation
              AnimatedOpacity(
                opacity: visible ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                child: Image.asset('assets/images/twitter.png',
                    width: 150, height: 150),
              ),
              const SizedBox(height: 40),

              // Slide Animation
              SlideTransition(
                position: _slideAnimation,
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      "Slide Animation",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    visible = !visible;
                  });
                },
                icon: const Icon(Icons.play_arrow),
                label: const Text('Toggle Fade'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
