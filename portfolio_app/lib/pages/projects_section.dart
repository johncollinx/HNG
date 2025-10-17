import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'title': 'Weather App',
        'description': 'A sleek weather app built using Flutter and OpenWeatherMap API.'
      },
      {
        'title': 'ToDo App',
        'description': 'A productivity app to manage daily tasks with Firebase backend.'
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Projects',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ...projects.map((project) => Card(
              margin: const EdgeInsets.only(bottom: 12),
              elevation: 3,
              child: ListTile(
                title: Text(project['title']!),
                subtitle: Text(project['description']!),
                leading: const Icon(Icons.work_outline),
              ),
            )),
      ],
    );
  }
}
