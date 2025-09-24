


import 'package:flutter/material.dart';

void main() {
  runApp(const Main7a());
}

class Main7a extends StatelessWidget {
  const Main7a({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Form Design",
      debugShowCheckedModeBanner: false,
      home: const FormDesign(),
    );
  }
}

class FormDesign extends StatelessWidget {
  const FormDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Design Example")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            TextField(
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),

            TextField(
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),

            TextField(
              decoration: const InputDecoration(
                labelText: "Age",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),

            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Gender",
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: "Male", child: Text("Male")),
                DropdownMenuItem(value: "Female", child: Text("Female")),
                DropdownMenuItem(value: "Other", child: Text("Other")),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),

            CheckboxListTile(
              title: const Text("I accept the Terms & Conditions"),
              value: false,
              onChanged: (value) {},
              controlAffinity: ListTileControlAffinity.leading,
            ),

            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
