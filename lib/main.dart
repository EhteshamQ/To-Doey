import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/tasks_screen.dart';

import 'models/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Tasks>(
      create: (BuildContext context) {
        return Tasks();
      },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

class Tasks extends ChangeNotifier {
  List<Task> _list = [
    Task(name: 'EAT FOOD'),
  ];

  UnmodifiableListView<Task> get list {
    return UnmodifiableListView(_list);
  }

  void AddElement(String name) {
    _list.add(
      Task(name: name),
    );
    notifyListeners();
  }

  int get listCount {
    return _list.length;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeItem(int index) {
    _list.removeAt(index);
    notifyListeners();
  }
}
