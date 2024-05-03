import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String from;
  HomePage(this.from, {super.key});
  @override
  Widget build(BuildContext context) {
    return from == "drawer" ? ScaffoldAppBar() : ScaffolText();
  }

  Scaffold ScaffoldAppBar() {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      backgroundColor: Colors.indigo,
    );
  }

  Scaffold ScaffolText() {
    return const Scaffold(
      body: Center(
          child: Text(
              "Home Page",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold
              )
          )
      ),
      backgroundColor: Colors.purple,
    );
  }
}
