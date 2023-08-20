import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The Screen Two
class ScreenTwo extends StatelessWidget {
  /// Constructs a [ScreenTwo]
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Two')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This is screen two'),
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
