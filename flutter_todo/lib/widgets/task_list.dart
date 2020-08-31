import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task.dart';
import 'package:provider/provider.dart';
import '../models/tasks_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  TasksList({this.tasks, this.onToggleTask});

  final List<Task> tasks;
  final Function onToggleTask;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(20.0),
      itemCount: Provider.of<TasksData>(context).tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          // TODO: CONSUMER HERE
          isChecked: Provider.of<TasksData>(context).tasks[index].isDone,
          taskTitle: Provider.of<TasksData>(context).tasks[index].name,
          toggleCheckbox: (bool checkboxState) {
            // onToggleTask(Provider.of<TasksData>(context).tasks[index]);
            // TODO: Add this;
          },
        );
      },
    );
  }
}
