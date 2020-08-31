import 'package:flutter/foundation.dart';
import 'package:flutter_todo/models/task.dart';

class TasksData with ChangeNotifier {
  List<Task> tasks = [];

  void addNewTask(newTask) {
    print('Provider new task $newTask');
    tasks.add(Task(name: newTask));
    notifyListeners();
  }
}
