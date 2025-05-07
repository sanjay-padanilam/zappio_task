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

    return Scaffold(
      appBar: AppBar(
        title: const Text("Book a Ride"),
        actions: [
          Switch(
            value: isDarkMode,
            onChanged: (value) => context.read<ThemeProvider>().toggleTheme(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(controller: pickupController),

            CustomTextField(controller: dropController),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const RideInfoScreen()),
                );
              },
              child: const Text("Book Ride"),
            ),
          ],
        ),
      ),
    );
  }
}
