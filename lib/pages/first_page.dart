import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter/pages/Calculator.dart';
import 'package:sample_flutter/pages/homePage.dart';
import 'package:sample_flutter/pages/profilePage.dart';
import 'package:sample_flutter/pages/second_page.dart';
import 'package:sample_flutter/pages/settingsPage.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedIndex = 0;

  void navigateBottombar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List page = [
      HomePage("homePage"),
      Calculator(),
      ProfilePage("profilePage")
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("1st Page"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange,
        child: Column(children: [
          const DrawerHeader(
              child: Icon(Icons.view_sidebar_outlined, size: 100)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("H O M E"),
            onTap: () {
              // pop the drawer first
              Navigator.pop(context);
              Navigator.pushNamed(context, "/homePage");
            },
          ),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/settingsPage");
              }),
          ListTile(
              leading: Icon(Icons.work),
              title: Text("To Do"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/todolist");
              }),
        ]),
      ),
      backgroundColor: Colors.white,
      body: page[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateBottombar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
