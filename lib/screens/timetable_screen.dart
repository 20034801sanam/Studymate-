import 'package:flutter/material.dart';

class TimetableScreen extends StatelessWidget {
  final Map<String, List<String>> timetable = {
    "Monday": ["Math - 9:00 AM", "Science - 11:00 AM"],
    "Tuesday": ["English - 10:00 AM", "History - 1:00 PM"],
    "Wednesday": ["Physics - 9:00 AM"],
    "Thursday": ["Chemistry - 12:00 PM"],
    "Friday": ["Computer Science - 2:00 PM"],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weekly Timetable"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: timetable.entries.map((entry) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ExpansionTile(
              title: Text(
                entry.key,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: entry.value.map((subject) {
                return ListTile(
                  title: Text(subject),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SubjectDetailsScreen(subject: subject),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class SubjectDetailsScreen extends StatelessWidget {
  final String subject;

  const SubjectDetailsScreen({required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subject)),
      body: Center(
        child: Text(
          "Details for: $subject",
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
