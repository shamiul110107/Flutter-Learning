
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter/pages/first_page.dart';
import 'package:sample_flutter/pages/second_page.dart';

void main() {
  //runApp(const MyListViewApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  void onTapped() {
    if (kDebugMode) {
      print("tapped");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
      routes: {
        "/secondpage": (context) => const SecondPage(),
        "/firstpage": (context) => const FirstPage()
      },
    );
  }
// called this method to like home: AppBarWithClickableView()
  Scaffold AppBarWithClickableView() {
    return Scaffold(
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
        body: Center(
          child: GestureDetector(
            onTap: onTapped,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: const Center(child: Text("Click Me")),
            ),
          ),
        )
        // const GridViewWidget()

        );
  }
}
