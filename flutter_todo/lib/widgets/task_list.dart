import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  TasksList({@required this.tasks, this.onToggleTask});

  final List<Task> tasks;
  final Function onToggleTask;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(20.0),
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          toggleCheckbox: (bool checkboxState) {
            onToggleTask(tasks[index]);
          },
        );
      },
    );
  }
}
