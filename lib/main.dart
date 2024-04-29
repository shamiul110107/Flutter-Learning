import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Text("Sample Flutter"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("clicked on logout");
                  }
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            BoxWidget(text: "Fav View", icon: Icons.favorite, iconColor: Colors.red),
            BoxWidget(text: "Star View", icon: Icons.star, iconColor: Colors.orange),
            BoxWidget(text: "Sunny View", icon: Icons.sunny, iconColor: Colors.white),
            BoxWidget(text: "Football View", icon: Icons.sports_football, iconColor: Colors.red),
            BoxWidget(text: "Cricket View", icon: Icons.sports_cricket, iconColor: Colors.orange),
            BoxWidget(text: "Sunny View", icon: Icons.sports_baseball, iconColor: Colors.white),
            BoxWidget(text: "Fav View", icon: Icons.favorite, iconColor: Colors.red),
            BoxWidget(text: "Star View", icon: Icons.star, iconColor: Colors.orange),
            BoxWidget(text: "Sunny View", icon: Icons.sunny, iconColor: Colors.white)
          ],
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;

  const BoxWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Icon(
            icon,
            color: iconColor,
            size: 50,
          ),
        ],
      ),
    );
  }
}
