import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function callback;
  final Function onLongpPresss;
  TaskTile({this.isChecked, this.title, this.callback, this.onLongpPresss});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongpPresss,
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        //onChanged: function,
        onChanged: callback,
      ),
    );
  }
}
