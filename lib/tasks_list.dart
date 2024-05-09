import 'package:flutter/material.dart';
import 'package:todo/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
    required this.tasks,
  });

  final List tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            name: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkbox: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
          );
        });
  }
}
