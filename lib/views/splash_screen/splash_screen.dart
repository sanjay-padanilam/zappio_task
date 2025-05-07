import 'package:flutter/material.dart';
import 'package:zappio_task/views/home_screen/homescreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.emoji_transportation, size: 100),
            const SizedBox(height: 20),
            const Text("Let’s Ride", style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
