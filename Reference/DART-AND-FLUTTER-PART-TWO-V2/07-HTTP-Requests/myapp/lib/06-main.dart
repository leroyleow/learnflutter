import 'package:flutter/material.dart';
// IMPORT HOME_SCREEN DART
import 'package:myapp/06-home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      home: HomeScreen(),
    );
  }
}
