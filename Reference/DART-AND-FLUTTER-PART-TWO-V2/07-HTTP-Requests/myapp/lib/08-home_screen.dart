import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The home screen
class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to Home Screen'),
            ElevatedButton(
              onPressed: () => context.go('/screen_one'),
              child: const Text('Go to Screen One'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/screen_two'),
              child: const Text('Go to the Screen Two'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go to the Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
