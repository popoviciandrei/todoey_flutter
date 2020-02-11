import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy almond milk'),
    Task(name: 'Buy cereals'),
    Task(name: 'Buy apples'),
  ];

  // Return an unmodifiable list of the _tasks
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;
  void addTask(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
