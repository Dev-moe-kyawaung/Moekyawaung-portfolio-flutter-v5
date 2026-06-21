import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  final void Function(String)? onScrollTo;

  const HeroSection({
    Key? key,
    this.onScrollTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 32),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to My Portfolio',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Software Developer & Designer',
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
