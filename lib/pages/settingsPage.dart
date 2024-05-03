import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final String from;
  SettingsPage(this.from, {super.key});
  @override
  Widget build(BuildContext context) {
    return from == "drawer" ? ScaffoldAppBar() : ScaffolText();
  }

  Scaffold ScaffoldAppBar() {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      backgroundColor: Colors.indigo,
    );
  }
  Scaffold ScaffolText() {
    return const Scaffold(
      body: Center(child: Text("Settings Page", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold
      ))),
      backgroundColor: Colors.blueGrey,
    );
  }
}