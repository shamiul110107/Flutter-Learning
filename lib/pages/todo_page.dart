import 'package:flutter/material.dart';

import '../Util/todo_tile.dart';

class ToDoList extends StatefulWidget {
  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  TextEditingController controller = TextEditingController();
  void onPressed() {
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('To Do')
      ),
      body: ListView(
        children: [
          TodoTile(),
          TodoTile(),
          TodoTile()
        ],
      ),
    );
  }
}
