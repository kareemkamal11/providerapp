// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.isChecked,
    required this.name,
    required this.checkbox,
  });

  final bool isChecked;
  final String name;
  final Function(bool?) checkbox;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkbox,
      ),
    );
  }
}
