import 'package:flutter/material.dart';
import 'package:flutter_todo/utils/constants.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
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
          ),
          SizedBox(
            height: 15.0,
          ),
          FlatButton(
            onPressed: () {},
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
