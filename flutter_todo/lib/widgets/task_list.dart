import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task.dart';
import 'package:provider/provider.dart';
import '../models/tasks_data.dart';
import '../models/tasks_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.0),
          itemCount: tasksData.getTasksLength(),
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: tasksData.taskIsChecked(index),
              taskTitle: tasksData.taskName(index),
              toggleCheckbox: (bool toggleTask) => tasksData.toggleTask(index),
              onLongPress: () => tasksData.removeTask(index),
            );
          },
        );
      },
    );
  }
}
