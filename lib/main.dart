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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.all(20),
                child: const Column(
                  children: [
                    Text(
                      "My First Widget",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.transparent),
                    ),
                    SizedBox(height: 20),
                    Icon(Icons.favorite, color: Colors.red, size: 50)
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green, borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.all(20),
                child: const Column(
                  children: [
                    Text(
                      "My First Widget",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.transparent),
                    ),
                    SizedBox(height: 20),
                    Icon(Icons.favorite, color: Colors.red, size: 50)
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.all(20),
                child: const Column(
                  children: [
                    Text(
                      "My First Widget",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.transparent),
                    ),
                    SizedBox(height: 20),
                    Icon(Icons.favorite, color: Colors.red, size: 50)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
