import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy almond milk'),
    Task(name: 'Buy cereals'),
    Task(name: 'Buy apples'),
  ];

  int get taskCount => tasks.length;
  void addTask(String name) => tasks.add(Task(name: name));
}
