import 'package:flutter/material.dart';

class RideInfoScreen extends StatelessWidget {
  const RideInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ride Info"),
        backgroundColor: Colors.deepPurple,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildInfoCard(
              icon: Icons.person,
              title: "Captain",
              subtitle: "Sanjay Saji",
              color: Colors.deepPurpleAccent,
            ),
            const SizedBox(height: 12),
            _buildInfoCard(
              icon: Icons.directions_car,
              title: "Vehicle No",
              subtitle: "KL 01",
              color: Colors.blueAccent,
            ),
            const SizedBox(height: 12),
            _buildInfoCard(
              icon: Icons.timer,
              title: "ETA",
              subtitle: "5 mins",
              color: Colors.orangeAccent,
            ),
            const Spacer(),
            SizedBox(
              height: 50,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Successfully started ride"),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                icon: const Icon(Icons.play_arrow),
                label: const Text("Start Ride", style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
