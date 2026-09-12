import 'package:flutter/material.dart';

class TaskDetailsScreen extends StatelessWidget {
  final String taskName;

  const TaskDetailsScreen({super.key, required this.taskName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(taskName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          "Details for: $taskName\n\nYou can add more information here.",
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
