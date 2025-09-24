/* ---------------- OLD CODE (Kept in comments for reference) ----------------
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //title: Text('This is First Screen'),
    home: Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('Grid View Example',
            style: TextStyle(fontSize: 30)),
      ), // AppBar
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ), // SliverGridDelegateWithFixedCrossAxisCount
        children: [
          // flaticon.com
          Image.asset('assets/images/youtube.png'),
          Image.asset('assets/images/whatsapp.png'),
          Image.asset('assets/images/twitter.png'),
          Image.asset('assets/images/cogwheel.png'),
          Image.asset('assets/images/twitter_latest.png'),
          ListTile(
            leading: Icon(Icons.home, size: 50),
          ),
          ListTile(
            leading: Icon(Icons.two_wheeler, size: 50),
          ),
          ListTile(
            leading: Icon(Icons.phone, size: 50),
          ),
        ],
      ), // GridView
    ), // Scaffold
  ));
}
---------------- END OLD CODE ---------------- */


// ---------------- NEW STRUCTURE FOR DRAWER APP ----------------
import 'package:flutter/material.dart';

class Main2b4 extends StatelessWidget {
  const Main2b4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text(
          'Grid View Example',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: const [
          // flaticon.com
          Image(image: AssetImage('assets/images/youtube.png')),
          Image(image: AssetImage('assets/images/whatsapp.png')),
          Image(image: AssetImage('assets/images/twitter.png')),
          Image(image: AssetImage('assets/images/cogwheel.png')),
          Image(image: AssetImage('assets/images/twitter_latest.png')),
          ListTile(
            leading: Icon(Icons.home, size: 50),
          ),
          ListTile(
            leading: Icon(Icons.two_wheeler, size: 50),
          ),
          ListTile(
            leading: Icon(Icons.phone, size: 50),
          ),
        ],
      ),
    );
  }
}
