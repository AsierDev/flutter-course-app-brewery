import 'package:flutter/material.dart';
import 'package:flutter_todo/utils/constants.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          decoration: isChecked ? TextDecoration.lineThrough : null,
          decorationThickness: 2.5,
        ),
      ),
      trailing: TaskCheckbox(
          checkBoxState: isChecked,
          onChange: (bool checkboxState) {
            setState(() {
              isChecked = checkboxState;
            });
          }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.checkBoxState, this.onChange});

  final bool checkBoxState;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: kMainColor,
      value: checkBoxState,
      onChanged: (newValue) => onChange(newValue),
    );
  }
}
