// Create an "assets" directory in the root of your project (same level as the lib directory).
// Place your desired image file (e.g., "my_image.jpg") inside the "assets" directory.
// Open the pubspec.yaml file in your project's root directory and add the following lines under the flutter section:
// yaml
// Copy code
// flutter:
//   assets:
//     - assets/
// Save the changes to the pubspec.yaml file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Asset Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Asset Demo'),
      ),
      body: Center(
        child: Image.asset(
          'assets/wedding_art.png', // Replace with your image file name and extension
        ),
      ),
    );
  }
}
