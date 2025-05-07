import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zappio_task/controller/temeprovider/themeprovider.dart';
import 'package:zappio_task/views/splash_screen/splash_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeProvider>().isDarkMode;

    return MaterialApp(
      title: 'Zappio Ride',
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: const SplashScreen(),
    );
  }
}
