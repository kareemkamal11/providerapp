
import 'package:flutter/material.dart';
import 'package:todo/main.dart';

class TaskDataProvider extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void addTask(String newTaskName){
    tasks.add(Task(name: newTaskName));
    notifyListeners();
  }

  void toggleTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
  
}