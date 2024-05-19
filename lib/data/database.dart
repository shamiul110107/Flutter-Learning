import 'package:hive/hive.dart';

class ToDoDatabase {
  List todoList = [];
  final myBox = Hive.box('myBox');
  void createInitialData() {
    todoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  void loadData() {
    todoList = myBox.get('TODOLIST');
  }
  void updateDatBase() {
    myBox.put('TODOLIST', todoList);
  }
}
