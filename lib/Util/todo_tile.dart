 import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  TodoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Text("Make Tutorial"),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}