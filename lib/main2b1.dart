import 'package:flutter/material.dart';
import 'login.dart';       // Import your login page file
import 'register.dart';   // Import your register page file

class Main2b1 extends StatelessWidget {
  const Main2b1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Shri Vishnu Engineering College for Women",
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(width: 10, color: Colors.green),
                color: Colors.red,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/im/fish.png"),
              ),
            ),
            const SizedBox(height: 30),

            // ✅ Login Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text(
                "Login Page",
                style: TextStyle(color: Colors.red),
              ),
            ),

            // ✅ Register Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegistrationPage()),
                );
              },
              child: const Text(
                "Registration Page",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
