import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The Screen one
class ScreenOne extends StatelessWidget {
  /// Constructs a [ScreenOne]
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen one')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This is Screen One'),
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
