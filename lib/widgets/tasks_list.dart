import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30.0),
      children: tasks
          .map(
            (task) => TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              onChanged: (checked) => setState(() => task.toggleDone()),
            ),
          )
          .toList(),
    );
  }
}
