import 'package:flutter/material.dart';

import 'task_details_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tasks = [
      "Finish math homework",
      "Prepare for science test",
      "Complete English assignment",
      "Group project meeting",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Tasks")),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      TaskDetailsScreen(taskName: tasks[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
