import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * Consumer returns list of tasks from TaskData class, stored in the
     * global state ( from the Provider packaged defined in "main.dart" file
     */
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                onChanged: (checkboxState) => taskData.updateTask(task),
              );
            },
            itemCount: taskData.taskCount);
      },
    );
  }
}
