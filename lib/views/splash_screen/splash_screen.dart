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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
              ),

              const SizedBox(height: 20),

              Text(
                "Let’s Ride",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  foreground:
                      Paint()
                        ..shader = LinearGradient(
                          colors: <Color>[
                            Colors.purple,
                            Colors.blue,
                            Colors.green,
                            Colors.orange,
                          ],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
