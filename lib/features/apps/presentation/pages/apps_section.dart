import 'package:flutter/material.dart';

class AppsSection extends StatelessWidget {
  const AppsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Apps & Demos',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              AppTile(emoji: '📊', title: 'Social Dashboard'),
              AppTile(emoji: '📱', title: 'PWA App'),
              AppTile(emoji: '🎮', title: 'Game Collection'),
              AppTile(emoji: '🎵', title: 'Music Player'),
              AppTile(emoji: '💬', title: 'Chat App'),
              AppTile(emoji: '🌤️', title: 'Weather App'),
            ],
          ),
        ],
      ),
    );
  }
}

class AppTile extends StatelessWidget {
  final String emoji;
  final String title;

  const AppTile({
    Key? key,
    required this.emoji,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withValues(alpha: 0.3)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            emoji,
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
