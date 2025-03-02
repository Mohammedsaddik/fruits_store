import 'package:flutter/material.dart';

void main() {
  runApp(const FruitsStore());
}

class FruitsStore extends StatelessWidget {
  const FruitsStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
