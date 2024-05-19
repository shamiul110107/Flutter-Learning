import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter/Util/dialog_box.dart';

import '../Util/todo_tile.dart';

class ToDoList extends StatefulWidget {
  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  final controller = TextEditingController();
  List todoList = [
    ["Make Turorial", false],
    ["Do Exercise", false]
  ];
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  void saveNewText() {
    setState(() {
      todoList.add([controller.text, true]);
      controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: controller,
          onSave: saveNewText,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar:
          AppBar(backgroundColor: Colors.yellow, title: const Text('To Do')),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: todoList[index][0],
            taskCompleted: todoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
