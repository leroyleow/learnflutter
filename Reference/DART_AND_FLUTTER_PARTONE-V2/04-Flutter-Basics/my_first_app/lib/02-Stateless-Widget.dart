// Import the necessary Flutter libraries
import 'package:flutter/material.dart';

// The main function runs the app
void main() {
  // Run the app by calling runApp and passing in the MyApp widget
  runApp(MaterialApp(home: MyApp()));
}

// Define a new widget called MyApp
class MyApp extends StatelessWidget {
  // This widget is the root of our application
  @override
  Widget build(BuildContext context) {
    // Scaffold is a basic layout structure for our app
    return Scaffold(
      // AppBar is the top bar of the app
      appBar: AppBar(
        // Title of the app
        title: Text('Hello World'),
      ),
      // The body of the app, where we will display our content
      body: Center(
        // Display the text "Hello World" in the center of the screen
        child: Text('Hello World'),
      ),
    );
  }
}
