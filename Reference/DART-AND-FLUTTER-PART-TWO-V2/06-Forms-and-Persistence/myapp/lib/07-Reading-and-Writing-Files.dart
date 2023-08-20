// Importing the necessary libraries
import 'dart:async';
import 'dart:io';
// Make sure to install path_provider for this to work!
// Make sure to run: flutter pub add path_provider inside of the myapp folder
//
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

// The entry point of the app
void main() {
  runApp(
    MaterialApp(
      title: 'Reading and Writing Files',
      home: FlutterDemo(storage: CounterStorage()),
    ),
  );
}

// A class that handles reading and writing of files
class CounterStorage {
  // A private method that returns the local path to the app's directory
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  // A private method that returns the local file where the counter is stored
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  // A method that reads the counter value from the file
  Future<int> readCounter() async {
    try {
      final file = await _localFile;

      // Read the file as a string
      final contents = await file.readAsString();

      // Parse the string as an integer and return it
      return int.parse(contents);
    } catch (e) {
      // If encountering an error, return 0
      return 0;
    }
  }

  // A method that writes the counter value to the file
  Future<File> writeCounter(int counter) async {
    final file = await _localFile;

    // Write the counter value as a string to the file
    return file.writeAsString('$counter');
  }
}

// A widget that displays the counter value and a button to increment it
class FlutterDemo extends StatefulWidget {
  const FlutterDemo({super.key, required this.storage});

  final CounterStorage storage;

  @override
  State<FlutterDemo> createState() => _FlutterDemoState();
}

class _FlutterDemoState extends State<FlutterDemo> {
  // The counter value
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    // When the widget is first created, read the counter value from the file
    widget.storage.readCounter().then((value) {
      setState(() {
        _counter = value;
      });
    });
  }

  // A method that increments the counter and writes it to the file
  Future<File> _incrementCounter() {
    setState(() {
      _counter++;
    });

    // Write the counter value to the file
    return widget.storage.writeCounter(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading and Writing Files'),
      ),
      body: Center(
        child: Text(
          'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
