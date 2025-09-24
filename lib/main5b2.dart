import 'package:flutter/material.dart';

class Main5b2 extends StatefulWidget {
  const Main5b2({super.key});

  @override
  State<Main5b2> createState() => _Main5b2State();
}

class _Main5b2State extends State<Main5b2> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  double res = 0;

  void calculator(String op) {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;

    switch (op) {
      case '+':
        res = num1 + num2;
        break;
      case '-':
        res = num1 - num2;
        break;
      case '*':
        res = num1 * num2;
        break;
      case '/':
        res = num2 != 0 ? num1 / num2 : 0; // handle division by zero
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator using Switch statement'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter First Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter Second Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      setState(() {
                        calculator('+');
                      });
                    },
                    child: const Text('+', style: TextStyle(fontSize: 30)),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      setState(() {
                        calculator('-');
                      });
                    },
                    child: const Text('-', style: TextStyle(fontSize: 30)),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      setState(() {
                        calculator('*');
                      });
                    },
                    child: const Text('*', style: TextStyle(fontSize: 30)),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      setState(() {
                        calculator('/');
                      });
                    },
                    child: const Text('/', style: TextStyle(fontSize: 30)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Text('Result : $res', style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
