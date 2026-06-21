import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              'Kotlin',
              'Jetpack Compose',
              'Android SDK',
              'Flutter',
              'Firebase',
              'React',
              'TypeScript',
              'Python',
            ]
                .map((skill) => Chip(
                      label: Text(skill),
                      backgroundColor: Colors.blue.withValues(alpha: 0.2),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
