import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '08-home_screen.dart';
import '08-Screen-One.dart';
import '08-Screen-Two.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/screen_one',
      builder: (context, state) => ScreenOne(),
    ),
    GoRoute(
      path: '/screen_two',
      builder: (context, state) => ScreenTwo(),
    ),
  ],
);

GoRouter createRouter() {
  return _router;
}
