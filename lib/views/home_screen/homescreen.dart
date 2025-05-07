import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zappio_task/controller/temeprovider/themeprovider.dart';
import 'package:zappio_task/views/home_screen/widgets/custom_textfield.dart';
import 'package:zappio_task/views/ride_info_screen/rideinfo_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pickupController = TextEditingController();
  final dropController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeProvider>().isDarkMode;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Book a Ride"),
        centerTitle: true,
        actions: [
          Switch(
            value: isDarkMode,
            onChanged: (value) => context.read<ThemeProvider>().toggleTheme(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Plan Your Trip",
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            Text("Pickup Location", style: theme.textTheme.labelLarge),
            const SizedBox(height: 8),
            CustomTextField(controller: pickupController),

            const SizedBox(height: 16),

            Text("Drop Location", style: theme.textTheme.labelLarge),
            const SizedBox(height: 8),
            CustomTextField(controller: dropController),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                textStyle: const TextStyle(fontSize: 16),
                elevation: 6,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const RideInfoScreen()),
                );
              },
              icon: const Icon(Icons.directions_car),
              label: const Text("Book Ride"),
            ),
          ],
        ),
      ),
    );
  }
}
