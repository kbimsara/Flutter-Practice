import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SafeArea Example'),
        ),
        body: const Center(
          child: Center(
              child: Text('22ug1-0498-Kavindu_Bimsara Says Hello Flutter!')),
        ),
      ),
    );
  }
}