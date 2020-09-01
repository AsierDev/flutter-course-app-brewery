import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/task_list.dart';
import 'package:provider/provider.dart';
import 'add_task_screen.dart';

import '../utils/constants.dart';
import '../models/tasks_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => buildShowModalBottomSheet(context),
        backgroundColor: kMainColor,
        child: Icon(
          Icons.add,
          size: 30.0,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, right: 30.0, bottom: 30.0, left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: kMainColor,
                  ),
                  backgroundColor: kSecondaryColor,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todo App',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TasksData>(context).getTasksLength()} tasks',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          ExpandedContainer(
            child: TasksList(),
            // tasks: tasks,
            // onToggleTask: (task) {
            //   setState(() {
            //     task.toggleDone();
            //   });
            // }),
          ),
        ],
      ),
    );
  }

  Future buildShowModalBottomSheet(BuildContext context) {
    print('yoo');
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (context) => SingleChildScrollView(
        child: AddTaskScreen(
            // onAddTask: (newTask) {
            //   setState(() {
            //     print(newTask);
            //     tasks.add(Task(name: newTask));
            //   });
            //   Navigator.pop(context);
            // },
            ),
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
      ),
    );
  }
}

class ExpandedContainer extends StatelessWidget {
  const ExpandedContainer({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80.0,
        child: child,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
