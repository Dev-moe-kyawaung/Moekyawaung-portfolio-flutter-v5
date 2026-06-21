import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Get In Touch',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'I\'m always open to new opportunities and interesting projects. Feel free to reach out!',
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Email Me'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text('LinkedIn'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text('GitHub'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
