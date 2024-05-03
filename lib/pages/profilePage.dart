import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String from;
  ProfilePage(this.from, {super.key});
  @override
  Widget build(BuildContext context) {
    return from == "drawer" ? ScaffoldAppBar() : ScaffolText();
  }

  Scaffold ScaffoldAppBar() {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      backgroundColor: Colors.indigo,
    );
  }
  Scaffold ScaffolText() {
    return const Scaffold(
      body: Center(child: Text("Profile Page", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold
      ))),
      backgroundColor: Colors.green,
    );
  }
}