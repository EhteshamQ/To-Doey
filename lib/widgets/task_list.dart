import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/main.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, tasks, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = tasks.list[index];
            return TaskTile(
              onLongpPresss: () {
                tasks.removeItem(index);
              },
              title: task.name,
              isChecked: task.isDone,
              callback: (value) {
                tasks.updateTask(task);
              },
            );
          },
          itemCount: tasks.listCount,
        );
      },
    );
  }
}
