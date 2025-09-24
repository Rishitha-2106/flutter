import 'package:flutter/material.dart';

// Import all your programs
import 'main2a1.dart';
import 'main2a2.dart';
import 'main2a3.dart';
import 'main2a4.dart';
import 'main2a5.dart';
import 'main2b1.dart'; // Login Page
import 'main2b2.dart';
import 'main2b3.dart';
import 'main2b4.dart';
import 'main3a1.dart';
import 'main3a2.dart';
import 'main3b.dart';
import 'main4a.dart';
import 'main4b.dart';
import 'main5a1.dart';
import 'main5a2.dart';
import 'main5b1.dart';
import 'main5b2.dart';
import 'main7a.dart';
import 'main7b.dart';
import 'main8b.dart';
import 'main8a.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer + TabBar + BottomNav',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // ✅ Programs list
  final List<Map<String, dynamic>> demos = [
    {"title": "Program 2a1", "page": Main2a1()},
    {"title": "Program 2a2", "page": Main2a2()},
    {"title": "Program 2a3", "page": Main2a3()},
    {"title": "Program 2a4", "page": Main2a4()},
    {"title": "Program 2a5", "page": Main2a5()},
    {"title": "Program 2b1", "page": Main2b1()},
    {"title": "Program 2b2", "page": Main2b2()},
    {"title": "Program 2b3", "page": Main2b3()},
    {"title": "Program 2b4", "page": Main2b4()},
    {"title": "Program 3a1", "page": Main3a1()},
    {"title": "Program 3a2", "page": Main3a2()},
    {"title": "Program 3b", "page": Main3b()},
    {"title": "Program 4a", "page": Main4a()},
    {"title": "Program 4b", "page": Main4b()},
    {"title": "Program 5a1", "page": Main5a1()},
    {"title": "Program 5a2", "page": Main5a2()},
    {"title": "Program 5b1", "page": Main5b1()},
    {"title": "Program 5b2", "page": Main5b2()},
    {"title": "Program 7a", "page": Main7a()},
    {"title": "Program 7b", "page": Main7b()},
    {"title": "Program 8b", "page": Main8b()},
    {"title": "Program 8a", "page": Main8a()},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter UI Demo"),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.home), text: "Home"),
            Tab(icon: Icon(Icons.star), text: "Favorites"),
            Tab(icon: Icon(Icons.settings), text: "Settings"),
          ],
        ),
      ),

      // ✅ Drawer with all programs
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("All Programs",
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ...demos.map((demo) => ListTile(
                  title: Text(demo["title"]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => demo["page"]),
                    );
                  },
                )),
          ],
        ),
      ),

      // ✅ TabBar content
      body: TabBarView(
        controller: _tabController,
        children: const [
          Main2b1(), // 👉 Home = Login + Registration Page
          Center(child: Text("Favorites Page Content")),
          Center(child: Text("Settings Page Content")),
        ],
      ),

      // ✅ Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
