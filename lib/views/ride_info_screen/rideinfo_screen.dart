import 'package:flutter/material.dart';

class RideInfoScreen extends StatelessWidget {
  const RideInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ride Info")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Captain: Sanjay Saji"),
            ),
            const ListTile(
              leading: Icon(Icons.directions_car),
              title: Text("Vehicle No: kl 01"),
            ),
            const ListTile(
              leading: Icon(Icons.timer),
              title: Text("ETA: 5 mins"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Successfully started ride")),
                );
              },
              child: const Text("Start Ride"),
            ),
          ],
        ),
      ),
    );
  }
}
