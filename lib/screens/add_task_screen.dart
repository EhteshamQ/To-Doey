import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTaskScreen extends StatelessWidget {
  final Function function;

  AddTaskScreen({this.function});

  @override
  Widget build(BuildContext context) {
    String text;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (value) {
                text = value;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      (10),
                    ),
                  ),
                ),
              ),
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              child: Text('ADD'),
              textColor: Colors.white,
              onPressed: () {
                if (text != null) {
                  function(text);
                  Navigator.pop(context);
                } else
                  Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
