import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text('MVC'),
          ),
          body: const Center(
            child: Text('Mvc'),
          ),
        ),
      ),
    );
  }
}
