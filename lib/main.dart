
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter/pages/Calculator.dart';
import 'package:sample_flutter/pages/first_page.dart';
import 'package:sample_flutter/pages/homePage.dart';
import 'package:sample_flutter/pages/profilePage.dart';
import 'package:sample_flutter/pages/second_page.dart';
import 'package:sample_flutter/pages/settingsPage.dart';

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
      home: FirstPage(),
      routes: {
        "/secondPage": (context) => const SecondPage(),
        "/firstPage": (context) => FirstPage(),
        "/homePage": (context) => HomePage("drawer"),
        "/settingsPage": (context) => SettingsPage("drawer"),
        "/profilePage": (context) => ProfilePage("drawer"),
        "/calculatorPage": (context) => Calculator()
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
