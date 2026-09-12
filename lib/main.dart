import 'package:flutter/material.dart';
import 'package:studymate_app/screens/tasks_screen.dart';
import 'package:studymate_app/screens/home_screen.dart';
import 'package:studymate_app/screens/timetable_screen.dart';
import 'package:studymate_app/screens/notes_placeholder.dart';
import 'package:studymate_app/screens/profile_placeholder.dart';

void main() {
  runApp(const StudyMateApp());
}

class StudyMateApp extends StatefulWidget {
  const StudyMateApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StudyMateAppState createState() => _StudyMateAppState();
}

class _StudyMateAppState extends State<StudyMateApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    TasksScreen(),
    TimetableScreen(),
    NotesPlaceholder(),
    ProfilePlaceholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.task), label: "Tasks"),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: "Timetable",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.note), label: "Notes"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
