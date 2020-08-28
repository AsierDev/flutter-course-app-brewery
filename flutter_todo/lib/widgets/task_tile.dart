import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          decoration: TextDecoration.lineThrough,
          decorationThickness: 2.5,
        ),
      ),
      trailing: Checkbox(value: false, onChanged: null),
    );
  }
}
