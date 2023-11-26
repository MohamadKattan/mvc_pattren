import 'package:flutter/material.dart';
import 'package:mvc_pattren/env/env.dart';
import 'package:mvc_pattren/views/home_screen.dart';

void main() {
  runApp(const MyApp());
  print(Env.key1);
  print(Env.key2);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      title: 'MVC - PATTERN',
      home: const HomeScreen(),
    );
  }
}
