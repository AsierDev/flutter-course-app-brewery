import 'package:flutter/material.dart';
import 'package:flutter_todo/utils/constants.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.isChecked, this.taskTitle, this.toggleCheckbox});
  final String taskTitle;
  final bool isChecked;
  final Function toggleCheckbox;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          decoration: isChecked ? TextDecoration.lineThrough : null,
          decorationThickness: 2.5,
        ),
      ),
      trailing: Checkbox(
        activeColor: kMainColor,
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
    );
  }
}
