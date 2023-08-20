import 'package:flutter/material.dart';

import 'widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Our Wedding'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/wedding.png'),
              const SizedBox(height: 8),
              const IconAndText(Icons.calendar_today, 'Jan 1'),
              const IconAndText(Icons.location_city, 'San Francisco'),
              const SizedBox(height: 8),
              const Text("We want you to join us!"),
              const Text(
                'We are getting married!',
              ),
            ],
          ),
        ));
  }
}
