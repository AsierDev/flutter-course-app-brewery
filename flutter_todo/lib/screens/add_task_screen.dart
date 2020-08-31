import 'package:flutter/material.dart';
import 'package:flutter_todo/models/tasks_data.dart';
import 'package:flutter_todo/utils/constants.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({this.onAddTask});

  final Function onAddTask;

  @override
  Widget build(BuildContext context) {
    String taskName;
    return Container(
      padding:
          EdgeInsets.only(top: 30.0, right: 30.0, bottom: 20.0, left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30.0, color: kMainColor, fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
            onChanged: (text) {
              taskName = text;
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            // onPressed: () {
            //   onAddTask(taskName);
            // },
            onPressed: () {
              Provider.of<TasksData>(context, listen: false)
                  .addNewTask(taskName);
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: 20.0,
              ),
            ),
            color: kMainColor,
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
