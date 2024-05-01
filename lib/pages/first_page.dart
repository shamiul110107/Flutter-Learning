import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1st Page"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          child: const Text("Go To Second Pages"),
          onPressed: () {
            Navigator.pushNamed(context, '/secondpage');
          },
        ),
      ),
    );
  }
}
