import 'package:flutter/material.dart';
import 'package:gratitude_jar/hello_screen.dart';

void main() {
  runApp(const GratitudeJarApp());
}

class GratitudeJarApp extends StatelessWidget {
  const GratitudeJarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gratitude Jar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HelloScreen(),
    );
  }
}
