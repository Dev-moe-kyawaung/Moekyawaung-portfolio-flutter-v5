import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Projects',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          const ProjectCard(
            title: 'PulseSync',
            description: 'Real-time sync platform for Android',
            tags: ['Kotlin', 'Firebase', 'Clean Architecture'],
          ),
          const SizedBox(height: 16),
          const ProjectCard(
            title: 'Social Dashboard',
            description: 'Real-time analytics dashboard',
            tags: ['React', 'Chart.js', 'WebSocket'],
          ),
          const SizedBox(height: 16),
          const ProjectCard(
            title: 'Job Portal',
            description: 'Full-stack job portal application',
            tags: ['React', 'Firebase', 'Node.js'],
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> tags;

  const ProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.tags,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withValues(alpha: 0.3)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            children: tags
                .map((tag) => Chip(
                      label: Text(tag),
                      backgroundColor: Colors.blue.withValues(alpha: 0.2),
                      labelStyle: const TextStyle(fontSize: 12),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
