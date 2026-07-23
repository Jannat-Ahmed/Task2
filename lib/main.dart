import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:task2/features/onboarding/onboarding_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  runApp(Task2());
}

class Task2 extends StatelessWidget {
  Task2({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    title: "Task2",
      home: OnboardingScreen(),
  );}
}
