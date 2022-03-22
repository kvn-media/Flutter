import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    // TODO: Create theme
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      // TODO: Add theme
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
      // 4
    );
  }
}