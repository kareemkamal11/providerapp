import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/task_data_provider.dart';
import 'package:todo/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, TaskDataProvider taskProvider, _) {
      return ListView.builder(
          itemCount: taskProvider.tasks.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(taskProvider.tasks[index].name),
              onDismissed: (direction) {
                taskProvider.deleteTask(taskProvider.tasks[index]);
              },
              background: Container(
                color: Colors.red,
                padding: const EdgeInsets.only(left: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.delete, color: Colors.white),
                    SizedBox(width: 30),
                    Text(
                      'Delete Task',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              child: TaskTile(
                name: taskProvider.tasks[index].name,
                isChecked: taskProvider.tasks[index].isDone,
                checkbox: (checkboxState) {
                  taskProvider.toggleTask(taskProvider.tasks[index]);
                },
              ),
            );
          });
    });
  }
}
