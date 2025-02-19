import 'package:fitness_dashboard/const/constant.dart';
import 'package:fitness_dashboard/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundCOlor,
        brightness: Brightness.dark,
      ),
      home: const MainScreen(),
    );
  }
}
