import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _inputText = ''; // Declare a string variable to store user input

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Input Example'),
      ),
      body: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Enter some text',
          ),
          onChanged: (value) {
            // Update the value of _inputText whenever the user types something
            setState(() {
              _inputText = value;
            });
          },
        ),
      ),
      // Display the user input below the TextField
      bottomSheet: Container(
        height: 50,
        alignment: Alignment.center,
        child: Text(
          'You entered: $_inputText',
        ),
      ),
    );
  }
}
