import 'package:flutter/foundation.dart';
import 'package:flutter_todo/models/task.dart';

import 'task.dart';

class TasksData with ChangeNotifier {
  List<Task> _tasks = [Task(name: 'Comprar aceite')];

  void addNewTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  int getTasksLength() {
    return _tasks.length;
  }

  bool taskIsChecked(int index) {
    return _tasks[index].isDone;
  }

  String taskName(int index) {
    return _tasks[index].name;
  }

  void toggleTask(index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void removeTask(index) {
    _tasks.remove(_tasks[index]);
    notifyListeners();
  }
}
