/* ---------------- OLD CODE (Kept in comments for reference) ----------------
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('List View Widget Example'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          // Image.asset('assets/images/vishnu_logo.png'),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            subtitle: Text('This is Home Page'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            subtitle: Text('This is Home Page'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    ),
  ));
}
---------------- END OLD CODE ---------------- */


// ---------------- NEW STRUCTURE FOR DRAWER APP ----------------
import 'package:flutter/material.dart';

class Main2b3 extends StatelessWidget {
  const Main2b3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('List View Widget Example'),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          // Image.asset('assets/images/vishnu_logo.png'),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            subtitle: Text('This is Home Page'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            subtitle: Text('This is Home Page'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
