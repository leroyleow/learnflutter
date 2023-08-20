import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(home: Scaffold(body: Center(child: Counter()))));

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // Initial Counter Value
  int _counter = 0;

  void _increment() {
    setState(() {
      // Updates the Counter
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called,
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: _increment,
          child: Text('Increment'),
        ),
        Text('Count: $_counter'),
      ],
    );
  }
}
